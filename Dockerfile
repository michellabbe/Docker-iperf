FROM alpine:latest

MAINTAINER Michel Labbe

# build intial apk binary cache and install iperf
RUN apk --update add iperf

# Expose the default iperf2 server ports
EXPOSE 5001

# entrypoint allows you to pass your arguments to the container at runtime
# very similar to a binary you would run. For example, in the following
# docker run -it <IMAGE> --help' is like running 'iperf --help'
ENTRYPOINT ["iperf"]

# iperf -s = run in Server mode
CMD ["-s"]
