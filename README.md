# **DevOps Engineer Certification Project** #
This is my DevOps Engineer edureka certification project. All work logged in here are my sole work and are custom made tailored for my project requirement.

## Table of Contents:
  - [About Project](#about-project)
  - [Getting Started](#getting-started)
  - [Demo](#usage)
  - [Author](#author)
  - [License](#license)

## About Project ##
As soon as the developer pushes the updated code on my GIT master branch [repo][1], a new test server should be provisioned with all the required software. The code should be containerized and deployed on the test server.The deployment should then be tested using a test automation tool, and if the test fails, container should be deleted. All this should happen automatically and should be triggered from a push to the GitHub master branch.

## Demo
 ![Demo][2]

## Getting Started ##
- [x] Created a decalrative pipeline to execute whole job as CI/CD.
  - [x] Clone repo `https://github.com/sagar-unix/projCert.git` in Jenkins Master.
  - [x] Run the Ansible Configuration management tool playbook to provision the slave with required packages from Jenkins Master on Slave.
    - [x] Make sure packages [Java 1.8, git, docker, curl] are present/installed.
    - [x] Make sure docker service is installed and started.
  - [x] Build and Run Docker image.
    - [x] Delete if any previous docker container and image exist to handle conflicts in successive runs.
    - [x] Everytime fresh build is done with -no-cache.
    - [x] Run docker image to spin up a container.
  - [x] Install pre-requesities for Selenium testing in Slave.
    - [x] Created a bash script in the repo to download and install the latest version of google-chrome.
    - [x] Same version of installed gooogle-chrome is found out and the same version of selenium chrome driver is installed.
  - [x] Created a Runnable jar for Selenium testing.
    - [x] run the jar to test.
    - [x] If test fails delete the docker container.

Jenkins Master: http://13.58.218.108:8080/job/devops/

Jenkins Slave/Website: http://3.15.160.86:8080

## Author
Sagar Unix - [@sagar-unix](https://github.com/sagar-unix)

[1]: https://github.com/sagar-unix/projCert.git "Sagar-GitHub-Repo"
[2]: https://github.com/sagar-unix/devopseng/blob/master/docs/sagar_unix_demo.gif "Sagar-DevOps-Demo"