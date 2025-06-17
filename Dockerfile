FROM alpine/jmeter:latest

# Copy your JMeter test plan into the container
COPY /tests/Testing_TheAudioDB.jmx /tests/Testing_TheAudioDB.jmx

# Set working directory
WORKDIR /tests

# Default command to run the test
CMD ["-n", "-t", "/tests/Testing_TheAudioDB.jmx", "-l", "/tests/results.jtl"]
