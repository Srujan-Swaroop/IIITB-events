# Commands to run the website

1. Clone the repository into your local system.
1. Install node js on your system.
1. cd into the _**IIITB-events**_ directory
1.create 'sampled' database and database tables by running the following commands.
````
mysql -u root -p
source sampled.sql
````
1. Run  the following command to install all the necessary dependencies for server.js

````
npm install
````
1. You can deploy the website directly using the following command
````
node server.js
````
1. You can also use _**Nodemon**_ to deploy the website, which is much better when comaperd to _**Node**_. To download it use this command
````
npm install -g nodemon
````
1. If you get any error while installing nodemon, try again using _**sudo**_.
1. The website will be accessible on port *4000*.
