# Docker Python Base Image

![Maintenance](https://img.shields.io/maintenance/yes/2020?style=plastic) [![Drone Status](https://img.shields.io/drone/build/fabiodcorreia/docker-base-python?style=plastic)](https://cloud.drone.io/fabiodcorreia/docker-base-python) [![Latest Release](https://img.shields.io/github/v/release/fabiodcorreia/docker-base-python?style=plastic)](https://github.com/fabiodcorreia/docker-base-python/releases/latest) [![GitHub Licence](https://img.shields.io/github/license/fabiodcorreia/docker-base-python?style=plastic)](https://github.com/fabiodcorreia/docker-base-python/blob/master/LICENSE)


![MicroBadger Layers](https://img.shields.io/microbadger/layers/fabiodcorreia/base-python?style=plastic) [![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/fabiodcorreia/base-python?style=plastic)](https://hub.docker.com/r/fabiodcorreia/base-python) [![Docker Pulls](https://img.shields.io/docker/pulls/fabiodcorreia/base-python?style=plastic)](https://hub.docker.com/r/fabiodcorreia/base-python) ![Docker Image Version (latest semver)](https://img.shields.io/docker/v/fabiodcorreia/base-python?sort=semver&style=plastic)

A custom Python base image built with Alpine Linux.

## Base Packages

- python3
- pip3
- wheel

## Versioning

This image follows the [Semantic Versioning](https://semver.org/) pattern.

- **MAJOR** version - Changes on Base Image version (1.0.0 to 2.0.0)
- **MINOR** version - Changes on Python version (3.8.3 to 3.8.4)
- **PATCH** version - Package updates and other non breaking changes on the image
- **DRAFT** version - Unstable build for review (Optional)

### Version Mapping

| Version        | 1.0      | 1.1      | 2.0     |
| :----:         | ---      | ---      | ----    |
| Base Image     | 1.x.x    | 1.x.x    | 2.x.x   |
| Python         | 3.8.3    | 3.8.4    | 3.8.3   |

When Base Image gets upgraded the major version is incremented, when Python gets upgraded the minor version is incremented.

## Tags

| Tag | Description |
| :----: | --- |
| latest | Latest version |
| 1.0.0 | Specific patch version |
| 1.0 | Specific minor version |
| 1 | Specific major version |
| 1.0.0-`arch` | Specific patch version to that `arch` |
| 1.0-`arch` | Specific minor version to that `arch` |
| 1-`arch` | Specific major version to that `arch` |
| test | Branch version - **DO NOT USE** |

The version tags are the same as the repository versioning tags but without the `v`. The `test` version is only for build purposes, it should not be pulled.

The `arch` can be one of the supported architectures described below.

## Supported Architectures

| Architecture | Tag |
| :----: | --- |
| x86-64 | amd64 |
| arm64 | arm64v8 |
| armhf | arm32v7 |


## Environment Variables

| Name                | Description |
| :-----------------: | ----------- |
| PUID                | Set the UserID - [Details](https://github.com/fabiodcorreia/docker-base-alpine#userid--groupid) |
| PGID                | Set the GroupID - [Details](https://github.com/fabiodcorreia/docker-base-alpine#userid--groupid) |
| TZ                  | Set the system timezone - [Options](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List) |
