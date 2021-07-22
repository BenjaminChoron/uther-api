const Quote = require('../models/quote');

const quoteController = {
    getAllQuotes: async (req, res) => {
        try {
            const quotes = await Quote.findAll();
            res.json({ quotes });
        } catch(error) {
            console.log(error);
        }
    },

    getOneQuote: async (req, res) => {
        try {
            const quote = await Quote.findByPk(req.params.id);
            res.json({ quote });
        } catch(error) {
            console.log(error);
        }
    },
}

module.exports = quoteController;