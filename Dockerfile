FROM frolvlad/alpine-scala:2.12

MAINTAINER tuxmonteiro

ARG SBT_VERSION=1.1.0

ENV SCALA_HOME=/usr/share/scala \
    SBT_VERSION=$SBT_VERSION

COPY tgz/sbt-${SBT_VERSION}.tgz /tmp

RUN cd /tmp && \
    tar xfz sbt-${SBT_VERSION}.tgz -C "${SCALA_HOME}" && \
    ln -sf "${SCALA_HOME}/sbt/bin/"* /usr/bin/ && \
    rm -f sbt-*.tgz

COPY fix-launch/sbt-launch-lib-${SBT_VERSION}.bash "${SCALA_HOME}/sbt/bin/sbt-launch-lib.bash"
