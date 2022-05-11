FROM ubuntu:20.04
ENV website=helsinki.fi
RUN apt-get update
RUN apt-get install -y curl
WORKDIR /usr/src/app
COPY script.sh .
CMD ["./script.sh" ]
