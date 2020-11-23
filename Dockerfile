FROM alpine:3.12
RUN apk add --no-cache redis ca-certificates socat libc6-compat
COPY ./faktory /

RUN mkdir -p /root/.faktory/db
RUN mkdir -p /var/lib/faktory/db
RUN mkdir -p /etc/faktory

EXPOSE 7419 7420
CMD ["/faktory", "-w", "0.0.0.0:7420", "-b", "0.0.0.0:7419"]
