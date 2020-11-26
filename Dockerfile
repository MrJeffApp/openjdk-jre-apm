ARG BASE_IMAGE

FROM ${BASE_IMAGE}

MAINTAINER Jeff

ENV BASE_IMAGE=${BASE_IMAGE}

ARG APM_VERSION
ENV APM_VERSION=${APM_VERSION}

ADD "elastic-apm-agent-${APM_VERSION}.jar" elastic-apm-agent.jar
