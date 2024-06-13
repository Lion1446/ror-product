#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
bundle install

# Precompile assets
bundle exec rails assets:precompile

# Clean up assets
bundle exec rails assets:clean
