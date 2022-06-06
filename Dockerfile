# eks version
FROM alpine/k8s:1.22.9

LABEL maintainer="Adam Smith <adams@beautyindustrygroup.com>"

RUN apk add --update \
        coreutils \
        py-pip

RUN pip install awscli

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
