#!/bin/sh

set -e

cd ./mainfolder

sh -c "CI=true npm ci"
sh -c "npm run build"