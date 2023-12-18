require 'sinatra/base'
require 'warden'

module Users
  module_function

  STORAGE = [
    {username: "admin", password: "password1234"}
  ]
  
  def load(username)
    STORAGE.find { |user| user[:username] == username }
  end

  def verify_password(username, password)
    user = load(username)
    return user if user && user[:password] == password
  end
end

Warden::Strategies.add(:password) do
  def valid?
    params["username"] || params["password"]
  end

  def authenticate!
    if (user = Users.verify_password(params["username"], params["password"]))
      success! user
    else
      fail! "Unauthorized"
    end
  end
end

class App < Sinatra::Base
  enable :sessions

  use Warden::Manager do |config|
    config.serialize_into_session { |user| user[:username] }
    config.serialize_from_session { |username| Users.load(username) }
    config.scope_defaults :default, strategies: [:password], action: "auth/unauthenticated"
    config.failure_app = self
  end

  get '/' do
    env['warden'].authenticate!
    erb :index
  end

  get '/auth/login' do
    erb :login
  end

  post '/auth/login' do
    env['warden'].authenticate!
    redirect '/'
  end

  unathentication = -> { redirect '/auth/login' }
  get  '/auth/unauthenticated', &unathentication
  post '/auth/unauthenticated', &unathentication

  get '/auth/logout' do
    env['warden'].logout
    redirect '/'
  end
end

if $0 == __FILE__
  App.run
end
