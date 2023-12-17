require 'sinatra/base'

class App < Sinatra::Base

  use Rack::Auth::Basic,"Protected Area" do |username, password|
    username == 'admin' && password == 'password123'
  end

  get '/' do
    'Top Secret'
  end

end

if $0 == __FILE__
  App.run
end
