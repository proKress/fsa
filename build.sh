#!/bin/bash
set -e

source ./VERSION
VERSION="${BASE_VERSION}-${SUFFIX_VERSION}"

#(cd argo-cd && IMAGE_NAMESPACE=ghcr.io/prokress/fsa IMAGE_TAG=$VERSION DOCKER_PUSH=true make image)

(cd argo-cd && IMAGE_NAMESPACE=ghcr.io/prokress/fsa IMAGE_TAG=$VERSION DOCKER_PUSH=true make image)
