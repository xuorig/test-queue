#!/bin/sh
set -x

export TEST_QUEUE_WORKERS=2 TEST_QUEUE_VERBOSE=1

bundle exec minitest-queue ./test/*_minispec.rb
bundle exec minitest-queue ./test/*_test.rb
bundle exec rspec-queue test
bundle exec cucumber-queue
