# Commands to run the website

1. Clone the repository into your local system.
2. Install node js on your system.
3. cd into the _**IIITB-events**_ directory.
(i).create 'sampled' database and database tables by running the following commands.
````
mysql -u root -p
source sampled.sql
````
(ii). Run  the following command to install all the necessary dependencies for server.js

````
npm install
````
(iii). You can deploy the website directly using the following command
````
node server.js
````
The website will be running on port 4001.
To open enter http://localhost:4001/ in your browser.
