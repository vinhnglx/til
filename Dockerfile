FROM ruby:2.3.0

RUN gem install bundler

COPY . /usr/src/app

WORKDIR /usr/src/app
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "/usr/src/app/config.ru", "--host", "0.0.0.0"]
