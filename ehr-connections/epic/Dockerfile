FROM ballerina/jvm-runtime:1.0

RUN apk add --update --no-cache curl jq

RUN mkdir -p /home/ballerina

RUN RELEASE_TAG="v1.0.0" && \
    RELEASE_URL="https://api.github.com/repos/wso2/open-healthcare-choreo-accelerators/releases/tags/${RELEASE_TAG}" && \
    EPICCONNECT_URL=$(curl -sL "${RELEASE_URL}" | \
    jq -r '.assets[] | select(.name == "EpicConnect.jar") | .url') && \
    curl -sLJO -H "Accept: application/octet-stream" "${EPICCONNECT_URL}"

RUN cp EpicConnect.jar /home/ballerina/EpicConnect.jar

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

CMD java -jar 'EpicConnect.jar'
