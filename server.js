var express = require( 'express' );
var mysql = require( 'mysql' );

var app = express();

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'oova',
    database: 'camping',
    socketPath: '/Applications/MAMP/tmp/mysql/mysql.sock'
});

var trips = [];

connection.query( 'SELECT * FROM tbl_trips', function( err, rows, fields ) {
    if( err ) {
        console.log( err );
    } else {
        
        for (var i = 0; i < rows.length; i++) {
            
            var id = rows[i].id;
            var campground_id = rows[i].fld_campground_id;
            var trip_number = rows[i].fld_trip_number;
            var arrival_date = rows[i].fld_arrival_date;
            var departure_date = rows[i].fld_departure_date;
            var site_number = rows[i].fld_site_number;
            var latitude = rows[i].fld_latitude;
            var longitude = rows[i].fld_longitude;
            var search_keywords = rows[i].fld_search_keywords;
            var memo = rows[i].fld_memo;

            global.campground_name = null;
            var XXX = null;

            connection.query( 'SELECT fld_name FROM tbl_campgrounds WHERE id = ' + campground_id, function( err2, rows2, fields2 ) {
          
                
                
                
                XXX = JSON.parse( JSON.stringify( rows2 ));
                global.campground_name = XXX[0].fld_name;

                // console.log( campground_name );

                
                
            });

            console.log( 'helloXX', global.campground_name );

            trips[i] = { 
                id: id, 
                campName: global.campground_name, 
                tripNum: trip_number 
            };
        }
    }
});

app.set( 'view engine', 'ejs' );

app.get( '/', function( req, res ) {


    var tagline = "any code of your own that you haven't looked at for six or more months might as well have ben written by someone else.";
    
    res.render( 'pages/index', {
        trips: trips,
        tagline: tagline
    });
});

app.get( '/about', function( req, res ) {
    res.render( 'pages/about' );
});

app.listen( process.env.PORT || 8080 );
console.log( '8080 is the magic port' );