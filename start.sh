#!/bin/bash

export CENTER_LAT="49.9546"
export CENTER_LON="-97.1264"
export AIRCRAFT_JSON_URL="https://api.adsb.lol/v2/point/49.9546/-97.1264/250"
export DATA_SOURCE="api"
export POLL_MS="15000"
export SFO_GROUND="0"

pnpm dev:server &
server_pid=$!
pnpm dev:web &
web_pid=$!
wait "$server_pid" "$web_pid"