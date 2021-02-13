#!/bin/sh

# Error out the whole script if anything fails.
set -e verbose

# Gems required for VS Code extensions.
gem install solargraph rubocop

# Make sure the bundle is up to date.
bundle install -j4

# Make sure the node_modules are up to date.
yarn install --check-files

# Ensure the database is set up and running.
bundle exec rails db:setup
