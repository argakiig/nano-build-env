#!/bin/bash
set -e

if [ -n "$DOCKER_PASSWORD" ]; then
    echo "$DOCKER_PASSWORD" | docker login -u argakiig --password-stdin

    # We push this just so it can be a cache next time
    if [ "$TRAVIS_BRANCH" = "master" ]; then
            ci_image_name="argakiig/nano-build-env-$TRAVIS_JOB_NAME"
            ./build-docker-image.sh Dockerfile-${TRAVIS_JOB_NAME} ${ci_image_name};
            docker push "$ci_image_name"
    fi

fi