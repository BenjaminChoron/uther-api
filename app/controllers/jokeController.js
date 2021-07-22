const Joke = require('../models/joke');

const jokeController = {
    getAllJokes: async (req, res) => {
        try {
            const jokes = await Joke.findAll();
            res.json({ jokes });
        } catch(error) {
            console.log(error);
        }
    },

    getOneJoke: async (req, res) => {
        try {
            const joke = await Joke.findByPk(req.params.id);
            res.json({ joke });
        } catch(error) {
            console.log(error);
        }
    },
}

module.exports = jokeController;