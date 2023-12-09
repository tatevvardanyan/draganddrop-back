const { Sequelize } = require("sequelize");
const sequelize = new Sequelize("dnd", "root", "", {
    port: 3306,
    host: "localhost",
    dialect: "mysql"
});
const Object = require('./object')(sequelize, Sequelize)
sequelize.sync()
module.exports = { sequelize, Object }