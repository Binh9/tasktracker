#!/bin/bash

export MIX_ENV=prod
export PORT=4794

echo "Stopping old copy of app, if any..."

_build/prod/rel/tasktracker/bin/tasktracker stop || true

echo "Starting app..."

_build/prod/rel/tasktracker/bin/tasktracker start
