#!/bin/sh

set -e

bundle check || bundle install --with development --jobs 20 --retry 5

# Remove pre-existing puma/passenger server.pid
rm -f "$APP_PATH/tmp/pids/server.pid"

# run passed commands
# Run with 'debug' gem
bundle exec rdbg -O --port 1234 -- bin/rails s -b 0.0.0.0
# Run without debugging
# bin/rails s -b 0.0.0.0