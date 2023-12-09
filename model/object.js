module.exports = (sequelize, Sequelize) => {
    const Object = sequelize.define("object", {
        num: Sequelize.INTEGER,
        img: Sequelize.STRING,
        order: Sequelize.STRING
    })
    return Object
}