#!/bin/sh
# bisect-bundler.sh

yes | gem uninstall bundler
rake install
bundle install --without development test
bundle exec gem -v | grep 2.4.5

