FROM ubuntu:22.04

# Update package lists
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget unzip

RUN wget https://github.com/duckdb/duckdb/releases/download/v0.10.0/duckdb_cli-linux-amd64.zip -O duckdb.zip

RUN unzip duckdb.zip && cp duckdb /usr/local/bin/duckdb && rm duckdb.zip

CMD ["/bin/bash"]


