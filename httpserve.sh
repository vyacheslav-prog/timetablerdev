#!/usr/bin/env sh

docker run -it --rm -v $(pwd):/app -w /app golang:1.25-alpine sh -c 'apk add build-base && CGO_ENABLED=1 DATABASE_MODE=sqlite3 DATABASE_URL=db.sql go run cmd/httpserver/main.go'
