const { Object, sequelize } = require("../model");
const { Op } = require('sequelize')
class MainController {
    static async first(req, res) {
        try {
            const objs = await Object.findAll()
            if (objs.length == 0) {
                return res.status(404).json({
                    message: "object not found"
                })
            }
            res.json(objs)
        } catch (err) {
            console.log(err);
            res.status(500).json({
                message: "not connection"
            })
        }
    };
    static async start(req, res) {
        try {
            const arr = await Object.findAll()
            await Object.create({
                img: req.file.filename,
                order: arr.length
            })
            res.json({
                message: "greate job :))"
            })
        } catch (err) {
            console.log(err);
            res.status(500).json({
                message: "not connection"
            })
        }
    }
    static async take(req, res) {
        try {
            const objs = await Object.findAll({order:sequelize.random()})
            res.json(objs)
        } catch (err) {
            console.log(err);
            res.status(500).json({
                message: "not connection"
            })
        }
    }
    static async drop(req, res) {
        try {
            console.log(req.params.id1);
            const ob1 = await Object.findOne({ where: { id: req.params.id1 } })
            const ob2 = await Object.findOne({ where: { id: req.params.id2 } })
            await Object.update({order:ob2.order},{where:{id:req.params.id1}})
            await Object.update({order:ob1.order},{where:{id:req.params.id2}})
            const objs=await Object.findAll( {order: [['order','ASC']]})
            res.json(objs)
        } catch (err) {
            console.log(err);
            res.status(500).json({
                message: "not connection"
            })
        }
    }
}
module.exports = MainController