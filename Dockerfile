FROM ubuntu:22.10

RUN echo 'export CMAKE_CXX_COMPILER=/bin/aarch64-linux-gnu-g++' >> ~/.profile
RUN echo 'export CMAKE_C_COMPILER=/bin/aarch64-linux-gnu-gcc' >> ~/.profile

RUN apt-get update && \
    apt-get install -y \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    cmake