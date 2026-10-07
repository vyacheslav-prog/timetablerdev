#!/usr/bin/env sh

docker run --rm -v $(pwd):/app -w /app -e DATABASE_URL=db.sql -e DATABASE_MODE=sqlite3 timetablerapi-build-base run cmd/httpserver/main.go
