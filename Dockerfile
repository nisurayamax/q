FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev \
        && git clone https://github.com/turtlecoin/violetminer \
        && cd violetminer \
        && git submodule update --init --recursive \
        && mkdir build \
        && cd build \
        && cmake -DENABLE_NVIDIA=OFF .. \
        && make
