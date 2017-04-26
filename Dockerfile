FROM ubuntu:14.04
RUN apt-get update
RUN mkdir /data/myvol -p
RUN echo "123456789 testtstet" > /data/myvol/test
VOLUME /data/myvol
EXPOSE 80 8080
ENTRYPOINT ["ping", "-c", "100", "127.0.0.1"]

