#
# Deis Console Dockerfile
#
# https://github.com/yongyu-lee/deis-console
#

# Pull base image.
FROM ubuntu:14.04

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y && \
  apt-get install -y curl git unzip vim wget && \
  curl -sSL http://deis.io/deis-cli/install.sh | sh -s 0.14.1 && mv deis /usr/local/bin && echo "install deis into /usr/local/bin"

# Define default command.
CMD ["bash"]
