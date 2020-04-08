FROM ubuntu:bionic

RUN apt-get update && apt-get install -y build-essential liblzma-dev git mkisofs isolinux && rm -rf /var/lib/apt/lists/*

WORKDIR /work/

RUN chown -R 1000:1000 /work

RUN mkdir entry

RUN chown -R 1000:1000 /work/entry/

USER 1000:1000

RUN git clone git://git.ipxe.org/ipxe.git

WORKDIR /work/ipxe/src

USER root:root

COPY scripts/build.sh .

RUN chmod o+x build.sh

USER 1000:1000
