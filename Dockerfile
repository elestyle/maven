ARG MAVEN_TAG=3-eclipse-temurin-21

FROM maven:${MAVEN_TAG}


# Install git and openssh-client
RUN apt-get update && apt-get install -y \
    git \
    --no-install-recommends openssh-client \
    && rm -rf /var/lib/apt/lists/*
