FROM ballerina/jvm-runtime:1.0

RUN apk add --update --no-cache curl jq

RUN mkdir -p /home/ballerina

# Update the release tag when creating a new release
ARG RELEASE_TAG="authz-service-v1.0.0"

ARG RELEASE_URL="https://api.github.com/repos/wso2/open-healthcare-choreo-accelerators/releases/tags/${RELEASE_TAG}"

# Download the FHIRAuthzService.jar from the release
RUN AUTHZ_URL=$(curl -sL "${RELEASE_URL}" | jq -r '.assets[] | select(.name == "FHIRAuthzService.jar") | .url') && \
    curl -sLJO -H "Accept: application/octet-stream" "${AUTHZ_URL}"

RUN cp FHIRAuthzService.jar /home/ballerina/FHIRAuthzService.jar

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid 10014 \
    "choreo"

WORKDIR /home/ballerina

EXPOSE  9090
USER 10014

CMD java -jar 'FHIRAuthzService.jar'
