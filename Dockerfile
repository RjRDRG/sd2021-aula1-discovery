# base image - an image with openjdk  8
FROM openjdk:8

# working directory inside docker image
WORKDIR /home/sd

# copy the jar created by assembly to the docker image
COPY target/*jar-with-dependencies.jar sd2021.jar

# run Discovery when starting the docker image
CMD ["java", "-cp", "/home/sd/sd2021.jar", "sd2021.aula1.Discovery"]
