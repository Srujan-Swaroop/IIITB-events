
module.exports = function (app,connection,upload) {

    // api ---------------------------------------------------------------------
    // get all todos

    app.post('/savedata', upload.array('files[]',2), function(req,res,next){


        console.log('Uploaded Successful ', req.files, req.body);
        
        console.log(req.body);
            var sql = "INSERT INTO events (Topic, Abstract,Location,Date,Type,Speaker,Image,Doc,Stime,Etime) VALUES ?";
            var img=req.files[0]['filename'];
            var file=req.files[1]['filename'];
            var values = [
              [req.body.title,req.body.editor1,req.body.location,req.body.date,req.body.category,req.body.speaker,img,file,req.body.stime,req.body.etime]
            ];
            connection.query(sql, [values], function (err, result) {
              if (err) throw err;
              console.log("Number of records inserted: " + result.affectedRows);
            });

    });

    app.get('/api/siddu',function (req, res) {
        console.log("sidduvivek");
        connection.query('Select * from events',function(error,rows,fields){
            if(!!error)
            {
                console.log("Error in querying");
    
            }
            else{
                console.log("success query");    
            }
            res.json({
                rows,
              }) ;
        });
        
    


        // use mongoose to get all todos in the database
        
           });
           app.post('/api/event', function (req, res) {
            console.log(req.body);
            var sql = "INSERT INTO events (Topic, Abstract,Location,Date,Type,Speaker,Stime,Etime) VALUES ?";
            var values = [
              [req.body.title,req.body.editor1,req.body.location,req.body.date,req.body.category,req.body.speaker,req.body.stime,req.body.etime]
            ];
            connection.query(sql, [values], function (err, result) {
              if (err) throw err;
              console.log("Number of records inserted: " + result.affectedRows);
            });
          
            // connection.query('Select * from events',function(error,rows,fields){
            //     if(!!error)
            //     {
            //         console.log("Error in querying");
        
            //     }
            //     else{
            //         console.log("success query");
            //         console.log(fields);
        
            //     }
            //     res.json({
            //         rows,
            //       }) ;
            });
        app.get('/api/search', function (req, res) {
            // use mongoose to get all todos in the database
            // getTodos(res);
        });

    app.get('/api/todos', function (req, res) {
        // use mongoose to get all todos in the database
        // getTodos(res);
    });

    // create todo and send back all todos after creation
    app.post('/api/todos', function (req, res) {

        // create a todo, information comes from AJAX request from Angular
        Todo.create({
            text: req.body.text,
            done: false
        }, function (err, todo) {
            if (err)
                res.send(err);

            // get and return all the todos after you create another
            // getTodos(res);
        });

    });

    // delete a todo
    app.delete('/api/todos/:todo_id', function (req, res) {
        Todo.remove({
            _id: req.params.todo_id
        }, function (err, todo) {
            if (err)
                res.send(err);

            // getTodos(res);
        });
    });

    // application -------------------------------------------------------------
    app.get('/', function (req, res) {
        res.sendFile('C:/Users/Siddu/Desktop/PE/mynode/public1/index.html'); // load the single view file (angular will handle the page changes on the front-end)
    });
};
