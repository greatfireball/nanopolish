FROM ubuntu:xenial
WORKDIR /
RUN apt update && apt install --yes git wget tar zlib-devel samtools bwa build-essential
RUN git clone --recursive https://github.com/jts/nanopolish.git
WORKDIR /nanopolish
RUN make all
CMD ./nanopolish
