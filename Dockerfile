FROM python:3.8.0-alpine

ARG FLAKE8_VERSION=3.7.9
RUN pip install flake8==$FLAKE8_VERSION
RUN flake8 --version
