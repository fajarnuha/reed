var express = require('express');
var router = express.Router();
var db = require('../db');

/* GET users listing. */
router.get('/', function(req, res, next) {
    var query = req.query.q
    if(query){
        db.get().query('SELECT * FROM org WHERE name LIKE ?', '%'+query+'%', function(err, rows, field){
            if(err) throw err
            var loop = Math.floor(rows.length/3)
            var img = ['result1', 'result2', 'result3']
            var rem = rows.length%3
            res.render('explore', {loop : loop, img : img, remainder : rem, data : rows})
        })
    }else{
        db.get().query('SELECT * FROM org', function(err, rows, field){
            if(err) throw err
            var loop = Math.floor(rows.length/3)
            var img = ['result1', 'result2', 'result3']
            var rem = rows.length%3
            res.render('explore', {loop : loop, img : img, remainder : rem, data : rows})
        })
    }
});

router.get('/profile', function(req, res, next){
    var id = req.query.id
    db.get().query('SELECT * FROM org WHERE id=?', id, function(err, rows, field){
        if(err) throw err
        res.render('profile', {id : id, data : rows})
    })
})

router.get('/apply', function(req, res, next){
    var id = req.query.id
    db.get().query('SELECT name FROM org',function(err, rows, field){
        if(err) throw err
        console.log(rows)
        res.render('apply', {id : id, acsource : rows})
    })

})

module.exports = router;
