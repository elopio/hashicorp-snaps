#!/bin/bash
#
# Build a snap.
#
# Arguments:
#   path:    The path of the project.
#   version: The version of the snap to build.

set -ev

cd "$1"
sed -i "s/source-tag:.*$/source-tag: '"$2"'/g" snapcraft.yaml
sed -i "s/version:.*$/version: '"$2"'/g" snapcraft.yaml
snapcraft clean
snapcraft
