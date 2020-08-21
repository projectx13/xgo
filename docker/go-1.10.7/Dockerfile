# Go cross compiler (xgo): Go 1.10.7
# Copyright (c) 2017 Péter Szilágyi. All rights reserved.
#
# Released under the MIT license.

FROM projectx13/xgo-base

MAINTAINER Péter Szilágyi <peterke@gmail.com>

# Configure the root Go distribution and bootstrap based on it
ENV GO_VERSION 1107

RUN \
  export ROOT_DIST=https://dl.google.com/go/go1.10.7.linux-amd64.tar.gz     && \
  export ROOT_DIST_SHA=1aabe10919048822f3bb1865f7a22f8b78387a12c03cd573101594bc8fb33579 && \
  \
  $BOOTSTRAP_PURE
