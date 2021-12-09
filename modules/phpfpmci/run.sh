#!/usr/bin/env bash

docker run -ti --network=host -v "${PWD}/artifact:/artifact" --rm --entrypoint bash phpfpmci_phpfpmci
