#!/usr/bin/env bash

set -e

echo y | sdkmanager --licenses

./gradlew build \
  -x :samples:flickr:build \
  -x :samples:giphy:build \
  -x :samples:contacturi:build \
  -x :samples:gallery:build \
  -x :samples:imgur:build \
  -x :samples:svg:build \
  -x testReleaseUnitTest --parallel
