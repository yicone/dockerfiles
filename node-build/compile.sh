#!/bin/bash
set -e
# Set directory to where we expect code to be
cd /usr/src/app/${SRC_PATH}
echo "Downloading dependencies"
npm install
echo "Running Tests"
npm test
echo "Building source"
npm run build
echo "Build Successful"