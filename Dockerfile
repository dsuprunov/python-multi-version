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
		liblzma-dev \
		; \
    rm -rf /var/lib/apt/lists/*

ENV PYENV_ROOT "/pyenv"
ENV PATH "$PYENV_ROOT/bin:$PYENV_ROOT/shims:$PATH"

RUN curl https://pyenv.run | bash

RUN pyenv install 3.10
RUN pyenv install 3.11
RUN pyenv install 3.12

RUN pyenv global 3.12 3.11 3.10

RUN pip install --upgrade pip

CMD ["bash"]