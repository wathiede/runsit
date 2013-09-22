#!/bin/sh

set -e
go build -x -o ./test/daemon/testdaemon ./test/daemon
go install github.com/bradfitz/runsit/jsonconfig
go build -x -o runsit
./runsit --http_port=9999 --config_dir=config $@
