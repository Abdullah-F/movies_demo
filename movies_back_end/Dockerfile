FROM ruby:2.6.3

RUN apt-get update &&  apt-get install -y \
      build-essential \
      default-libmysqlclient-dev \
      imagemagick \
      git-core \
      && apt-get autoremove \
      && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV RAILS_ROOT /app
RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
