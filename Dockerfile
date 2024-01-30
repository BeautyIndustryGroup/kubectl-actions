 eks version
FROM amazon/aws-cli

ARG KUBECTL_VERSION=1.29.0
ARG KUBECTL_BUILD_DATE=2024-01-04

LABEL maintainer="Adam Smith <adams@beautyindustrygroup.com>"

RUN curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/${KUBECTL_VERSION}/${KUBECTL_BUILD_DATE}/bin/linux/amd64/kubectl && \
    mv kubectl /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl
# RUN pip install awscli

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
