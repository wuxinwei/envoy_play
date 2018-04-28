FROM envoyproxy/envoy:latest

RUN apt-get update && apt-get -q install -y \
    curl

COPY envoy.v2.yaml /etc/envoy.yaml

EXPOSE 11011 11021 18080 9902

CMD /usr/local/bin/envoy -c /etc/envoy.yaml --v2-config-only
