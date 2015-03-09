# dart-protoc

Docker image for generating Dart code from a protocol buffer definition.

    $ docker run -v $(pwd):/dart_protoc -it rlincoln/dart-protoc --dart_out=. toyapi.proto
