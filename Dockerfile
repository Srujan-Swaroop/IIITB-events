FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive

# Exposing port where service is running
EXPOSE 3000

# Defining the directory structure inside the container
# Setting current working dir
WORKDIR /usr/app

# Copying relevant files inside container
COPY . /usr/app/

# Installing the requirements inside the container
RUN apt-get update
RUN apt-get install nodejs curl npm -y

RUN mv ./node_modules ./node_modules.tmp \
  && mv ./node_modules.tmp ./node_modules \
  && npm install
#RUN npm install mysql
#RUN npm install body-parser
#RUN npm install formidable
#RUN npm install cors
#RUN npm install nodemon
ENTRYPOINT ["node","server.js"]
#CMD ["/bin/sh","run.sh"]
