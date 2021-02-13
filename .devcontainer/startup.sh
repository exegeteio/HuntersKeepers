#!/bin/sh

# Error out the whole script if anything fails.
set -e verbose

# Gems required for VS Code extensions.
termd -s "# Installing Solargraph and Rubocop"
sudo gem install solargraph rubocop

# Make sure the bundle is up to date.
termd -s "# Updating bundle"
docker-compose run --rm web bundle install -j4

# Make sure the node_modules are up to date.
termd -s "# Updating yarn"
docker-compose run --rm web yarn install --check-files

# Ensure the database is set up and running.
termd -s "# Database Setup"
docker-compose run --rm web bundle exec rails db:setup db:seed

# Start up the services automagically.
termd -s "# Starting Services"
docker-compose up -d