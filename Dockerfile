FROM ubuntu:xenial
WORKDIR /
RUN apt update && apt install --yes git wget tar zlib1g-dev samtools bwa build-essential python parallel python-pip
RUN pip install biopython
RUN git clone --recursive https://github.com/jts/nanopolish.git
WORKDIR /nanopolish
RUN make all
CMD ./nanopolish
