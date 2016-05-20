#!/bin/sh -e

if [ "${TOXENV}" = "py24" ]; then
    add-apt-repository ppa:fkrull/deadsnakes
    apt-get update -qq
    apt-get install python2.4
fi
