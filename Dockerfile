FROM node:12-alpine

# Exposing port where service is running
EXPOSE 4000

# Defining the directory structure inside the container
# Setting current working dir
WORKDIR /usr/app

RUN apk --update --no-cache add tzdata bash curl \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

RUN apk update && apk add --no-cache coreutils

# Copying relevant files inside container
COPY . /usr/app/

ADD run.sh /usr/app/run.sh
RUN chmod 0755 /usr/app/run.sh
# Installing the requirements inside the container
RUN npm install


CMD ["./run.sh", "-t", "30", "db:3306", "--", "node", "server.js"]
#CMD ["/bin/sh","run.sh"]
