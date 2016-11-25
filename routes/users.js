var express = require('express');
var router = express.Router();
var db = require('../db');

/* GET users listing. */
router.get('/', function(req, res, next) {
    db.get().query('SELECT * FROM org', function(err, rows, field){
        if(err) throw err
        var loop = Math.floor(rows.length/3)
        var img = ['result1', 'result2', 'result3']
        var rem = rows.length%3
        console.log(rows)
        res.render('explore', {loop : loop, img : img, remainder : rem, data : rows})
    })
});

router.get('/profile', function(req, res, next){
    var id = req.query.id
    db.get().query('SELECT * FROM org WHERE id=?', id, function(err, rows, field){
        if(err) throw err
        console.log(rows[0])
        res.render('profile', {data : rows})
    })
})

module.exports = router;
