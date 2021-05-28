FROM ruby:2.5.7-alpine

WORKDIR /app
COPY . /app

RUN apk -U add --no-cache \
  build-base \
  git \
  postgresql-dev \
  postgresql-client \
  libxml2-dev \
  libxslt-dev \
  nodejs \
  yarn \
  imagemagick \
  tzdata \
  less \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /app

RUN gem install rails
RUN gem install bundler
RUN bundle install

CMD ["rails", "s"]
