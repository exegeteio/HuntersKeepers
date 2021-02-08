#!/bin/sh

# Add common utilities for development.
apk add \
	bash \
	curl \
	git \
	nano \
	openssh-client \
	postgresql-client \
	zsh 

# Gems required for VS Code extensions.
gem install solargraph rubocop

# Make sure the bundle is up to date.
bundle install -j4

# Make sure the node_modules are up to date.
yarn install --check-files

# Ensure the database is set up and running.
bundle exec rails db:setup
