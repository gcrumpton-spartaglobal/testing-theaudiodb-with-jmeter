# Testing TheAudioDB API With JMeter
This repo contains a mini-project to test TheAudioDB API (https://www.theaudiodb.com) to practice using JMeter.

## Docker Setup
Ensure that the repo is your current working directory, and then:
1. Create the volume:
   ```
   docker volume create jmeter-results-volume
   ```
3. Build the image:
   ```
   docker build -t testing-theaudiodb-with-jmeter .
   ```
4. Run the container:
   ```
   docker run --rm -v jmeter-results-volume:/tests/ testing-theaudiodb-with-jmeter
   ```
