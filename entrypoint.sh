#!/bin/bash
bundle exec rails db:migrate
bundle exec rails db:seed
rm -f tmp/pids/server.pid
bundle exec rails s -b 0.0.0.0 --dev-caching
