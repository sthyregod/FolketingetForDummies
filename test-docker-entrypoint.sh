#!/bin/sh

set -e

# Check if we need to install new gems
bundle check || bundle install --jobs 20 --retry 5

# Then run any passed command
bin/rails test "${@}"