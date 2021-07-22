const {DataTypes, Model} = require('sequelize');
const sequelize = require('../database');

class Quote extends Model {};

Quote.init({
    description: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    author: {
        type: DataTypes.TEXT,
        allowNull: false
    }
},{
    sequelize,
    tableName: "quote"
});

module.exports = Quote;