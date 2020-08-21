# Go cross compiler (xgo): Go 1.9
# Copyright (c) 2017 Péter Szilágyi. All rights reserved.
#
# Released under the MIT license.

FROM projectx13/xgo-base

MAINTAINER Péter Szilágyi <peterke@gmail.com>

# Configure the root Go distribution and bootstrap based on it
ENV GO_VERSION 193

RUN \
  export ROOT_DIST=https://redirector.gvt1.com/edgedl/go/go1.9.3.linux-amd64.tar.gz     && \
  export ROOT_DIST_SHA=a4da5f4c07dfda8194c4621611aeb7ceaab98af0b38bfb29e1be2ebb04c3556c && \
  \
  $BOOTSTRAP_PURE
