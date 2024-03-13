FROM ubuntu:22.04

RUN set -eux; \
	DEBIAN_FRONTEND=noninteractive \
	apt-get update; \	
    apt-get install -y --no-install-recommends \
    	ca-certificates \
    	git \
    	curl \
    	build-essential \
	    libssl-dev \
	    zlib1g-dev \
	    libbz2-dev \
	    libreadline-dev \
	    libsqlite3-dev \
	    libffi-dev \
	    lzma \
		liblzma-dev \ 
		; \
    rm -rf /var/lib/apt/lists/*

RUN curl https://pyenv.run | bash  

ENV PATH="/root/.pyenv/bin:${PATH}"

CMD ["bash"]