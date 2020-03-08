FROM ubuntu:18.04

RUN apt-get update -qq && apt-get install -y -qq --no-install-recommends \
        build-essential \
        ca-certificates \
        cmake \
        curl \
        gcc-arm-none-eabi \
        git \
        python3 \
        python3-pip \
        unzip &&\
    rm -rf /var/lib/apt/lists/* &&\
    pip3 install --upgrade pip setuptools &&\
    pip3 install --upgrade tockloader

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

