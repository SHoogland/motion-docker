FROM ubuntu:20.10

LABEL "org.opencontainers.image.source"="https://github.com/SHoogland/motion-docker"

RUN apt-get update
RUN apt-get install motion --yes

CMD [ "motion", "-n" ]
