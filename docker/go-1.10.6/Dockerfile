# Go cross compiler (xgo): Go 1.10.6
# Copyright (c) 2017 Péter Szilágyi. All rights reserved.
#
# Released under the MIT license.

FROM projectx13/xgo-base

MAINTAINER Péter Szilágyi <peterke@gmail.com>

# Configure the root Go distribution and bootstrap based on it
ENV GO_VERSION 1106

RUN \
  export ROOT_DIST=https://dl.google.com/go/go1.10.6.linux-amd64.tar.gz     && \
  export ROOT_DIST_SHA=acbdedf28b55b38d2db6f06209a25a869a36d31bdcf09fd2ec3d40e1279e0592 && \
  \
  $BOOTSTRAP_PURE
