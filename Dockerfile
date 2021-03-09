FROM ubuntu:20.10

LABEL "org.opencontainers.image.source"="https://github.com/SHoogland/motion-docker"

RUN apt-get update
RUN apt-get install motion --yes

USER motion

# R/W needed for motion to update configurations
VOLUME /usr/local/etc/motion
# R/W needed for motion to update Video & images
VOLUME /var/lib/motion

CMD test -e /usr/local/etc/motion/motion.conf || \
    cp /usr/local/etc/motion/motion-dist.conf /usr/local/etc/motion/motion.conf

CMD [ "motion", "-n" ]
