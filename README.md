# Testing TheAudioDB API With JMeter
This repo contains a mini-project to test TheAudioDB API (https://www.theaudiodb.com) to practice using JMeter.

## Docker Setup
1. Build the image by navigating to the repo in a terminal and running:
   ```
   docker build -t testing-theaudiodb-with-jmeter .
   ```
2. Run the container:
   ```
   docker run --rm -v /tests:/tests/results testing-theaudiodb-with-jmeter
   ```
   TODO: I'm hoping to change the docker tests to allow the user to save the results.
