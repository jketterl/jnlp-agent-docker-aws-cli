FROM jenkins/jnlp-agent-docker

USER root

# Install aws-cli
RUN apk -Uuv add groff less python py-pip && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

USER jenkins
