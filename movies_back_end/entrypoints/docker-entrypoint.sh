#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup
bundle exec rails s -b 0.0.0.0
