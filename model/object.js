module.exports = (sequelize, Sequelize) => {
    const Object = sequelize.define("object", {
        img: Sequelize.STRING,
        order: Sequelize.INTEGER
    })
    return Object
}