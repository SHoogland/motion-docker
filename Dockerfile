FROM ubuntu:20.10

RUN apt-get update
RUN apt-get install motion --yes

CMD [ "motion", "-n" ]
