# Commands to run the website

1. Clone the repository into your local system.
2. Install node js on your system.
3. cd into the _**IIITB-events**_ directory,
4. Run  the following command to install all the necessary dependencies for the server[server.js] to start.
````
npm install
````
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
8. Now run the node server by running:


1. You can deploy the website directly using the following command
````
node server.js
````
1. You can also use _**Nodemon**_ to deploy the website, which is much better when comaperd to _**Node**_. To download it use this command
````
