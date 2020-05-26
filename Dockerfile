FROM node:12-alpine

# Exposing port where service is running
EXPOSE 4000

# Defining the directory structure inside the container
# Setting current working dir
WORKDIR /usr/app

# Copying relevant files inside container
COPY . /usr/app/

# Installing the requirements inside the container
#RUN apt-get update
#RUN apt-get install nodejs curl npm -y

#RUN mv ./node_modules ./node_modules.tmp \
#  && mv ./node_modules.tmp ./node_modules \
#  && npm install
RUN npm install

ENTRYPOINT ["npm","start"]
#CMD ["/bin/sh","run.sh"]
