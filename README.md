# sbstjn/sam [![Docker Stars](https://img.shields.io/docker/stars/sbstjn/sam.svg?maxAge=600)](https://hub.docker.com/r/sbstjn/sam/) [![Docker Pulls](https://img.shields.io/docker/pulls/sbstjn/sam.svg?maxAge=600)](https://hub.docker.com/r/sbstjn/sam/)

> Docker image with useful tools for `node` projects with `aws-sam-cli`. Works fine in CircleCI and GitLab CI.

## Components

- `node v12.14.1`
- `yarn v1.21.1`
- `sam v0.39.0`

### Packages

- `apollo`
- `graphql-cli`
- `swagger-combine`

## Usage

### General

```Dockerfile
# Dockerfile

FROM sbstjn/sam
```

### CircleCI

```yaml
jobs:
  checkout:
    working_directory: ~/repo
    docker:
      - image: sbstjn/sam
```

## Development

```bash
# Clone repository

$ > git clone git@github.com:sbstjn/docker-sam.git
$ > cd docker-sam

# Build container

$ > docker build .

# Start bash and test your environment

$ > docker run -it --entrypoint /bin/bash <container-id>
```
