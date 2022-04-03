#!/bin/bash

set -e

bundle install

# Remove a potentially pre-existing server.pid for Rails.
if [[ -a /tmp/puma.pid ]]; then
  rm /tmp/puma.pid
fi

rm -f /usr/src/app/tmp/pids/server.pid


# Run the command.
exec "$@"
