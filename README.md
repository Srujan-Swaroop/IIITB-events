# Commands to run the website

1. Clone the repository into your local system.
2. Install node js on your system.
3. cd into the _**IIITB-events**_ directory.
(i).create 'sampled' database and database tables by running the following commands.
=======
3. cd into the _**IIITB-events**_ directory,
4. Run  the following command to install all the necessary dependencies for the server[server.js] to start.
````
mysql -u root -p
source sampled.sql
````
<<<<<<< HEAD
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
=======
5. Setup mysql database for the server in server.js.
6. Update your mysql password in the following section of code at server.js
````
var connection=mysql.createConnection({

    host:'localhost',
    user:'root',
    password:'[---Here---]' ,
    database:'sampled'
});
````
7. Configure database in your local repository,by executing folowwing commands.
````
source events.sql

````
8. Now deploy the node server by runnig the node server,Execute following command for running the server:-
````
node server.js

````
9. The website is deployed in local machine at port:4001.

10. Access the website by entering the following url in your browser:

````
http://localhost:4001/

````

