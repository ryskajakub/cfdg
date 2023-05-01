FROM debian:unstable

RUN apt update && apt -y install contextfree

CMD tail -f /dev/null
