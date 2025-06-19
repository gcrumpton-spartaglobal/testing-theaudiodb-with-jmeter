# Testing TheAudioDB API With JMeter
This repo contains a mini-project to test TheAudioDB API (https://www.theaudiodb.com) to practice using JMeter.

## JMeter Setup
Ensure you have JMeter installed, and then:
1. Open JMeter.
2. Navigate to File -> Open and find the cloned 'testing-theaudiodb-with-jmeter' repo on your system.
3. Select the 'Testing_TheAudioDB.jmx' file and click open.

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
