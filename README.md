## Custom Ubuntu 22.04 LTS Image with Integrated Python Versions

[![Docker](https://github.com/dsuprunov/python-multi-version/actions/workflows/docker.yml/badge.svg)](https://github.com/dsuprunov/python-multi-version/actions/workflows/docker.yml)

This repository contains a Dockerfile used for building a custom Docker image with Ubuntu 22.04 LTS and integrated versions of Python (3.10, 3.11, 3.12), achieved through the utilization of `pyenv`.

### Purpose

The Docker image serves as a versatile environment for development and testing, particularly when multiple Python versions are required. It enables seamless management of Python versions, facilitating tasks such as running unit tests and employing `tox` for local testing.

### Features

- Ubuntu 22.04 LTS base
- Integrated Python versions: 3.10, 3.11, 3.12
- `pyenv` for seamless management of Python versions

### Pulling the Image

You can also download the pre-built image from Docker Hub:

- **Docker Hub:** [dsuprunov/python-multi-version](https://hub.docker.com/r/dsuprunov/python-multi-version)
- **Command:** `docker pull dsuprunov/python-multi-version:latest`
