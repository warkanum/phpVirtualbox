#!/bin/bash
curdir=$(dirname "$(readlink -f "$0")")
docker build -t wk/phpvirtualbox $curdir/../
