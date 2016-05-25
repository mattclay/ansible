#!/bin/sh -eux

ls -l /home/shippable
ls -l /home/shippable/cexec
ls -l /home/shippable/cache
ls -l /tmp
ls -l /tmp/cexec
ls -l "${SHIPPABLE_BUILD_DIR}"

container_id=$(docker run -d ansible/ansible:ubuntu1204 -v "${SHIPPABLE_BUILD_DIR}:/tmp/shippable-cache")

docker exec "${container_id}" ls -l "/tmp/shippable-cache"

docker kill "${container_id}"
docker rm "${container_id}"
