# Go cross compiler (xgo): Go 1.9.5
# Copyright (c) 2017 Péter Szilágyi. All rights reserved.
#
# Released under the MIT license.

FROM projectx13/xgo-base

MAINTAINER Péter Szilágyi <peterke@gmail.com>

# Configure the root Go distribution and bootstrap based on it
ENV GO_VERSION 195

RUN \
  export ROOT_DIST=https://dl.google.com/go/go1.9.5.linux-amd64.tar.gz     && \
  export ROOT_DIST_SHA=d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7 && \
  \
  $BOOTSTRAP_PURE
