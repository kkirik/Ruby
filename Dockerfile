FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
# COPY Gemfile.lock /app/Gemfile.lock

# install gems dev mode
RUN bundle install --without production 

# RUN bundle install
COPY . /app