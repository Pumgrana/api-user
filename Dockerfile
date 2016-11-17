FROM ruby:2.2

RUN mkdir /myapp
WORKDIR /myapp

ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp/
RUN chmod +x bin/rails

EXPOSE 9000

ENTRYPOINT ["./docker-entrypoint.sh"]
