# Dockerfile
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install tools and Java
RUN apt update && \
    apt upgrade -y && \
    apt install -y \
        git \
        default-jdk \
        curl \
        gdb \
        cgdb \
        python3-pip \
        wget \
        gpg \
        unzip \
        gcc \
        make \
        nano \
        python3 \
        python3-tabulate \
        python3-psutil \
        python3-pycparser \
        libxext6 \
        libxrender1 \
        libxtst6 \
        libxi6 && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    apt clean && rm -rf /var/lib/apt/lists/*

# Set nano as the default editor for Git
RUN git config --system core.editor "nano"

# Install Jupiter
WORKDIR /opt
RUN wget https://github.com/andrescv/Jupiter/releases/download/v3.1/Jupiter-3.1-linux.zip && \
    unzip Jupiter-3.1-linux.zip && \
    mv image jupiter
ENV PATH="$PATH:/opt/jupiter/bin"

WORKDIR /workspace
CMD ["/bin/bash"]
