FROM ruby:3.1

WORKDIR /app
COPY . /app
RUN bundle install

EXPOSE 8000

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "8000"]
