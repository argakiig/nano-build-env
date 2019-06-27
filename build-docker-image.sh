#!/bin/bash
set -eu

if [ "$#" -lt 2 ]; then
	echo 'Usage: build-docker-image.sh <dockerFile> <dockerImageTag> [<dockerBuildArgs>...]' >&2
	exit 1
fi

dockerFile="$1"
dockerTag="$2"
shift; shift

docker pull "${dockerTag}" || true
echo "Building $dockerTag"
docker build "$@" -f "${dockerFile}" -t "${dockerTag}" --cache-from "${dockerTag}" .
