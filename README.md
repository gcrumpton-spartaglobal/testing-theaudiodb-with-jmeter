# Testing TheAudioDB API With JMeter
This repo contains a mini-project to test TheAudioDB API (https://www.theaudiodb.com).

## Project Goal
The aim of this project is to practise using version control and CI/CD for JMeter. The JMeter project itself is quite simple, 
with the challenge being setting up the CI/CD pipeline.

## Project Setup
This project is set up so that you can run all of the tests on your system using either JMeter or a Docker container. Additionally, 
the GitHub Workflow is set up with a workflow dispatch so that you can run the CI/CD pipeline whenever you want. The CI/CD pipeline 
also produces two artifacts containing a 'results.jtl' file for both JMeter running on the action runner and also in a Docker container.

### JMeter Setup
Ensure you have JMeter installed and this repo cloned onto your system, and then:
1. Open JMeter.
2. Navigate to File -> Open and find the cloned 'testing-theaudiodb-with-jmeter' repo on your system.
3. Select the 'Testing_TheAudioDB.jmx' file and click 'Open'.

### Docker Setup
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
