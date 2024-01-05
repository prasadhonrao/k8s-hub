const express = require('express');
const router = express.Router();

/* GET contact page. */
router.get('/', (req, res) => {
  console.log('in contact route...')
  res.render('contact', {
    title: 'Contact Us',   
  });
});

module.exports = router;