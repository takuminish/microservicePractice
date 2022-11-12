FROM ruby:3

COPY app /app

WORKDIR app

RUN bundle install

EXPOSE 4202