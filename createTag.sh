#!/usr/bin/env bash

echo """
pacticipant: $pacticipant
pact_broker_url: $pact_broker_url
pact_broker_username: $pact_broker_username
pact_broker_password: $pact_broker_password
version: $version
tag: $tag
"""

docker run --rm \
pactfoundation/pact-cli:latest \
broker create-version-tag \
--pacticipant "$pacticipant" \
--broker-base-url="$pact_broker_url" \
--broker-username="$pact_broker_username" \
--broker-password="$pact_broker_password" \
--version "$version" \
--tag "$tag"
