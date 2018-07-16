FROM akshshar/protobuf

COPY grpc.version /tmp/
COPY build_grpc.sh /tmp/
RUN chmod +x /tmp/build_grpc.sh && /tmp/build_grpc.sh
