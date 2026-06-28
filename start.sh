#!/bin/bash
cd "$(dirname "$0")"
echo "Starting Gem Dungeon Breakout..."
python3 -m http.server 8080 &
PID=$!
sleep 0.5
open http://localhost:8080/
echo "Game open at http://localhost:8080/"
echo "Press Ctrl+C to stop the server"
trap "kill $PID" INT TERM
wait $PID
