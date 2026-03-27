FROM jenkins/jenkins:lts

USER root

# Install prerequisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        r-base \
        r-base-dev \
        libgit2-dev \
        libcurl4-openssl-dev \
        libssl-dev \
        libxml2-dev \
        git \
        curl \
        libpq-dev \
        build-essential \
        libfreetype6-dev \
        libharfbuzz-dev \
        libfontconfig1-dev \
        libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev libwebp-dev \
        libfribidi-dev && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
