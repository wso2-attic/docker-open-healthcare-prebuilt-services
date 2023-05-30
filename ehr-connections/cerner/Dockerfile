FROM ballerina/jvm-runtime:1.0

RUN apk add --update --no-cache curl jq

RUN mkdir -p /home/ballerina

RUN RELEASE_TAG="v1.0.0" && \
    RELEASE_URL="https://api.github.com/repos/wso2/open-healthcare-choreo-accelerators/releases/tags/${RELEASE_TAG}" && \
    CERNERCONNECT_URL=$(curl -sL "${RELEASE_URL}" | \
    jq -r '.assets[] | select(.name == "CernerConnect.jar") | .url') && \
    curl -sLJO -H "Accept: application/octet-stream" "${CERNERCONNECT_URL}"

RUN cp CernerConnect.jar /home/ballerina/CernerConnect.jar

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

CMD java -jar 'CernerConnect.jar'
