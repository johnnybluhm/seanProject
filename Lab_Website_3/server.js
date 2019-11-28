/***********************
TEST 2
  Load Components!

  Express      - A Node.js Framework
  Body-Parser  - A tool to help use parse the data in a post request
  Pug          - A view engine for dynamically rendering HTML pages
  Pg-Promise   - A database tool to help use connect to our PostgreSQL database

***********************/

const express = require('express'); // Add the express framework has been added
let app = express();

const bodyParser = require('body-parser'); // Add the body-parser tool has been added
app.use(bodyParser.json());              // Add support for JSON encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // Add support for URL encoded bodies

const pug = require('pug'); // Add the 'pug' view engine

//Create Database Connection
const pgp = require('pg-promise')();


/**********************
 
  Database Connection information

  host: This defines the ip address of the server hosting our database.  We'll be using localhost and run our database on our local machine (i.e. can't be access via the Internet)
  port: This defines what port we can expect to communicate to our database.  We'll use 5432 to talk with PostgreSQL
  database: This is the name of our specific database.  From our previous lab, we created the football_db database, which holds our football data tables
  user: This should be left as postgres, the default user account created when PostgreSQL was installed
  password: This the password for accessing the database.  You'll need to set a password USING THE PSQL TERMINAL THIS IS NOT A PASSWORD FOR POSTGRES USER ACCOUNT IN LINUX!

**********************/
// REMEMBER to chage the password

const dbConfig = {
host: 'localhost',
port: 5432,
database: 'football_db',
user: 'postgres',
password: 'qwerty'
};

let db = pgp(dbConfig);

// set the view engine to ejs
app.set('view engine', 'pug');
app.use(express.static(__dirname + '/')); // This line is necessary for us to use relative paths and access our resources directory

app.get('/home', function(req, res) {

  var query1 = "select * from class_times where course_subject='3022' and dept='CSCI'";
var query2 = "select * from class_times where course_subject='2270' and dept='CSCI'";
var query3= "select * from class_times where course_subject='1155' and dept='ANTH'";


db.task('get-everything', task => {
    return task.batch([
        task.any(query1),
       task.any(query2),
       task.any(query3)

    ]);
})
.then(data => {
  
  var class_array = data;
  

for(var j=0; j<class_array.length;j++){

  var class1_array = data[j]; 
  

for(var i=0; i<class1_array.length;i++){

var class_object = class1_array[i];


  //get two times parsed
  var parse = class_object.meeting_time.split(" ");
  var time1 = parse[0];
  var ampm1 = parse[1];
  var time2 = parse[3];
  var ampm2 = parse[4];

  var parse_colon = time1.split(":");
 
  var hour1= parseInt(parse_colon[0],10);
  var minute1=parseInt(parse_colon[1],10);


 if(ampm1 == 'PM' && hour1 != 12){
  hour1 = hour1+12
 }
  var parse_colon2 = time2.split(":");
 
  var hour2= parseInt(parse_colon2[0],10);
  var minute2=parseInt(parse_colon2[1],10);
  
 if(ampm2 == 'PM' && hour2 != 12){
  hour2 = hour2+12
 }
  var class_time1 = new Date(2019, 6, 4, hour1, minute1);
  var class_time2 = new Date(2019, 6, 4, hour2, minute2);


  class_object.meeting_time={
    "start":class_time1,
    "end":class_time2
  };
  
}//inner for loop

}//outer for loop

//array of one class
//class_array[j][i].value=class_object;

var schedule1=class_array[1];
var schedule_list= [
schedule1,
class_array[2],
class_array[0]

]


res.render('pages/team_stats.pug',{

  schedule_list: schedule_list

      })

})//data


.catch(error => {
    // display error message in case an error
        request.flash('error', err);
        res.render('pages/team_stats',{
      my_title: "Page Title Here",
      result_1: '',
      result_2: '',
      result_3: ''
    })
});



});//get 


app.listen(3000);
console.log('3000 is the magic port');