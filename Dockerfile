FROM maven:$MAVEN_TAG

ARG MAVEN_TAG # Maven version

# Install git and openssh-client
RUN apt-get update && apt-get install -y \
    git \
    --no-install-recommends openssh-client \
    && rm -rf /var/lib/apt/lists/*
