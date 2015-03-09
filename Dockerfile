FROM google/dart

RUN apt-get update
RUN apt-get install -yq protobuf-compiler

RUN git clone https://github.com/dart-lang/dart-protoc-plugin.git /app
WORKDIR /app

RUN pub install
RUN apt-get install -yq make
RUN make build-plugin

WORKDIR /dart_protoc

ENV PATH=/app/out:$PATH

ENTRYPOINT ["/usr/bin/protoc"]
CMD ["-h"]
