# eks version
FROM amazon/aws-cli

ARG KUBECTL_VERSION=1.22.15

LABEL maintainer="Adam Smith <adams@beautyindustrygroup.com>"

RUN curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/${KUBECTL_VERSION}/2022-03-09/bin/linux/amd64/kubectl && \
    mv kubectl /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl
# RUN pip install awscli

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
