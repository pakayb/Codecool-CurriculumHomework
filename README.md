# Webapp deployment to servers

## Codecool beer shop
Students in Codecool got the idea to start a new startup and start an online beer shop for developer working from home.
Your task will be to help them to start their JAVA project, setup Docker containers for server, and the database, and create a Docker-compose to start the infrastructure of the project.

### Goals
- Learn how to create Docker images from Dockerfiles.
- Learn how to setup Docker containers.
- Understand how to run multiple Docker containers with Docker-compose.

##Tasks

### Where to start? :
- Clone the [repository](https://github.com/pakayb/Codecool-CurriculumHomework)
- Install [Docker](https://www.docker.com/get-started), if you haven't installed yet.

####Task 1:
- Create a docker image from the given Dockerfile in the sql directory.
- When you run this image it creates a Docker container with a postgres DB.
(You can check, and modify the DB username and password in the Dockerfile, then you should rebuild the image.)
- Use the default 5432 port for the DB container.

#### Task 2:
- Create a Docker-compose file
- This file should do 2 things:
1. Pull the [Tomcat](https://hub.docker.com/_/tomcat) image from DockerHub, and start a Tomcat server
2. Start the DB container

#### Task 3:
- Write a bash script to deploy the given codecoolshop.war file to the Tomcat server.

### Materials
[Docker tutorial from the basics](https://docker-curriculum.com/) <br>
[Tutorial how to deploy webapp to Tomcat](https://aspetraining.com/resources/blog/deploying-your-first-web-app-to-tomcat-on-docker) <br>
[Postgres on docker](https://phoenixnap.com/kb/deploy-postgresql-on-docker) <br>
[Getting started with Docker-compose](https://aspetraining.com/resources/blog/deploying-your-first-web-app-to-tomcat-on-docker) <br>
