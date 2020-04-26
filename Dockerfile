FROM ubuntu

RUN set -eux; \
	apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
		ruby-full \
		libxml2-dev \
		build-essential \
		git; \
    gem install --no-document travis; \
	apt-get clean; \
	rm -rf /var/lib/apt/lists/*;

ENTRYPOINT ["travis"]