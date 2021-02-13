ARG TZ
FROM ubuntu:20.04
ARG TZ
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install -y freeorion

ENTRYPOINT ["/usr/lib/freeorion/freeoriond"]