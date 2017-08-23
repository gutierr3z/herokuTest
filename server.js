var express = require( 'express' );
var app = express();

var pgp = require('pg-promise')(/*options*/)

// --------------------------------------------------------------------------------
// DVDRENTAL ---------------------------------------
// var db = pgp('postgres://postgres:oova@localhost:5433/dvdrental');
// var db = pgp('postgres://lipotmujqxlpqp:942c5578a0c0cd60928ae78651b4134f9a74b859a06c3be8934fa2b9ef395c50@ec2-107-22-211-182.compute-1.amazonaws.com:5432/d232e3aq43o7fj');

// CAMPING ---------------------------------------
var db = pgp('postgres://postgres:oova@localhost:5433/camping');
// --------------------------------------------------------------------------------

var trips = [];

// db.any('SELECT * FROM tbl_trips', [true])
var sql = 'SELECT * FROM tbl_trips AS trips JOIN tbl_campgrounds AS camp ON trips.fld_campground_id::int = camp.id';

db.any( sql, [true])
.then(function(data) {
    // success;
    console.log( 'success', data.length );

    for (var i = 0; i < data.length; i++) {
        var trip_number = data[i].fld_trip_number;
        var campground_name = data[i].fld_name;
        var arrival_date = data[i].fld_arrival_date;
        var departure_date = data[i].fld_departure_date;
        var site_number = data[i].fld_site_number;
        var latitude = data[i].fld_latitude;
        var longitude = data[i].fld_longitude;
        var search_keywords = data[i].fld_search_keywords;
        var memo = data[i].fld_memo;

        trips[i] = { 
            tripNumber: trip_number,
            campgroundName: campground_name,
            arrivalDate: arrival_date,
            departureDate: departure_date,
            siteNumber: site_number,
            latitude: latitude,
            longitude: longitude,
            searchKeywords: search_keywords,
            memo: memo
        };
    }
})
.catch(function(error) {
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