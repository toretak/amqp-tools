FROM ubuntu:18.04

RUN apt-get update \
	&& apt-get install -y --no-install-recommends amqp-tools \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["amqp-publish"]
