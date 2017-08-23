var express = require( 'express' );
var app = express();

var pgp = require('pg-promise')(/*options*/)

// var db = pgp('postgres://postgres:oova@localhost:5433/dvdrental')
var db = pgp('postgres://lipotmujqxlpqp:942c5578a0c0cd60928ae78651b4134f9a74b859a06c3be8934fa2b9ef395c50@ec2-107-22-211-182.compute-1.amazonaws.com:5432/d232e3aq43o7fj')


var trips = [];

db.any('SELECT * FROM actor', [true])
.then(function(data) {
    // success;
    console.log( 'success', data.length );

    for (var i = 0; i < data.length; i++) {
        var first_name = data[i].first_name;

        trips[i] = { 
            firstName: first_name 
        };
    }
})
.catch(function(error) {
    // error;
    console.log( error );
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