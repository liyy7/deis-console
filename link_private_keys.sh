#!/bin/sh

mkdir -p /root/.ssh && \
ls /root/private_keys | xargs -I FILE ln -s /root/private_keys/FILE /root/.ssh/FILE
