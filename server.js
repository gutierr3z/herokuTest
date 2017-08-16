var express = require( 'express' );
var app = express();

app.set( 'view engine', 'ejs' );

app.get( '/', function( req, res ) {

    var drinks = [
        { name: 'bloody mary', drunkness: 3 },
        { name: 'martini', drunkness: 5 },
        { name: 'scotch', drunkness: 10 }
    ];

    var tagline = "any code of your own that you haven't looked at for six or more months might as well have ben written by someone else.";
    res.render( 'pages/index', {
        drinks: drinks,
        tagline: tagline
    });
});

app.get( '/about', function( req, res ) {
    res.render( 'pages/about' );
});

app.listen( 8080 );
console.log( '8080 is the magic port' );