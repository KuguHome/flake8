# Flake8 docker image

Docker image with [flake8](http://flake8.pycqa.org/en/latest/) python linter.

### Fork notes
This repository was forked with the intent of -

1. [ ] add an autobuild for dockerhub/gitlab-ci
2. [x] pin the python image to version 3.8.0
3. [x] pin the flake version to 3.7.9

For now the image can be found at https://hub.docker.com/r/d3banjan/flake8


### Usage

* Docker

```
docker run -v $(pwd)/scripts:/scripts hoto/flake8:3.0.4 /scripts
```

* Docker Compose

```yaml
#docker-compose.yml
version: '2'

services:

  lint:
    image: hoto/flake8:3.0.4
    command: flake8 /scripts /tests
    volumes:
      - ./scripts:/scripts
      - ./tests:/tests
      - ./.flake8:/.flake8
```

* Gitlab CI Runner

```yaml
#.gitlab-ci.yml
lint:
  image: hoto/flake8:3.0.4
  stage: lint
  tags:
    - dind
  script:
    - flake8 scripts/ tests/
```
