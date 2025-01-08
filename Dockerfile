FROM ubuntu:22.04

# Update package lists
ARG DUCKDB_VERSION=v1.1.3
ARG DUCKDB_ARCH=amd64

RUN apt-get update && apt-get install -y \
    unzip curl

RUN curl -L -o duckdb_cli.zip "https://github.com/duckdb/duckdb/releases/download/${DUCKDB_VERSION}/duckdb_cli-linux-${DUCKDB_ARCH}.zip" \
    && unzip duckdb_cli.zip \
    && rm duckdb_cli.zip

RUN mv duckdb /usr/local/bin/duckdb 
ENV SHELL=/bin/bash

CMD ["/bin/bash"]


