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
2. You can deploy the website directly using the following command
````
node server.js
````
The website will be running on port 4001.
To open enter http://localhost:4001/ in your browser.
