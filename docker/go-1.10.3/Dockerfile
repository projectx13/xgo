# Go cross compiler (xgo): Go 1.10.3
# Copyright (c) 2017 Péter Szilágyi. All rights reserved.
#
# Released under the MIT license.

FROM projectx13/xgo-base

MAINTAINER Péter Szilágyi <peterke@gmail.com>

# Configure the root Go distribution and bootstrap based on it
ENV GO_VERSION 1103

RUN \
  export ROOT_DIST=https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz     && \
  export ROOT_DIST_SHA=fa1b0e45d3b647c252f51f5e1204aba049cde4af177ef9f2181f43004f901035 && \
  \
  $BOOTSTRAP_PURE
