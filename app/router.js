const express = require('express');

const quoteController = require('./controllers/quoteController');
const jokeController = require('./controllers/jokeController');

const router = express.Router();

// QUOTES
router.get('/quotes', quoteController.getAllQuotes);
router.get('/quotes/:id', quoteController.getOneQuote);

// JOKES
router.get('/jokes', jokeController.getAllJokes);
router.get('/jokes/:id', jokeController.getOneJoke);

module.exports = router;