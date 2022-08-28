#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

rails generate active_record:session_migration
rails generate migration add_column_to_requestinvs url:string cost_per_item:decimal total_cost:decimal team_name:string issued:boolean
rake db:migrate
rake db:seed
rails server -e production