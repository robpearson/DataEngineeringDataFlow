FROM openjdk:8

# Copy files from official SDK image, including script/dependencies.
COPY --from=apache/beam_java8_sdk:2.60.0 /opt/apache/beam /opt/apache/beam

# Set the entrypoint to Apache Beam SDK launcher.
ENTRYPOINT ["/opt/apache/beam/boot"]
