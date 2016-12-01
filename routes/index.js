var express = require('express');
var router = express.Router();
var db = require('../db');

/* GET home page. */
router.get('/', function(req, res, next) {
    db.get().query('SELECT * FROM org LIMIT 3', function(err, rows, fields){
        if (err) throw err;
        console.log(rows)
        res.render('index', {data : rows})
    })
});

router.post('/signup', function(req, res, next){
    db.get().query('INSERT INTO org SET ?', req.body, function(err, res){
        if(err) throw err;
    });
});

router.post('/subbook', function(req, res, next){
    db.get().query('INSERT INTO submit SET ?', req.body, function(err, res){
        if(err) throw err;
    });
});

module.exports = router;
