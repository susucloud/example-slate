FROM ruby:2.5.3-alpine3.7
RUN apk --no-cache add \
  nodejs \
  build-base
RUN gem install bundler
ADD . /workspace
WORKDIR /workspace
RUN bundle install
RUN bundle exec middleman build
