#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

rails generate active_record:session_migration
rake db:migrate
rails server -e production