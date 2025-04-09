FROM alpine:latest

COPY .cargo /root/.cargo

COPY 0001-Revert-Merge-branch-dev-into-dev3.patch build.sh mimalloc.diff /tmp

RUN rustup update

RUN /tmp/build.sh

ENV LD_PRELOAD=/usr/lib/libmimalloc.so
