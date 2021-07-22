const {DataTypes, Model} = require('sequelize');
const sequelize = require('../database');

class Joke extends Model {};

Joke.init({
    description: {
        type: DataTypes.TEXT,
        allowNull: false
    }
},{
    sequelize,
    tableName: "joke"
});

module.exports = Joke;