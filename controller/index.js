const { Object } = require("../model");

class MainController {
    static async first(req, res) {
        try {
            const objs = await Object.findAll()
            if (objs.length == 0) {//հանել
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
            const numm = Math.floor(Math.random() * 4) + 1
            const { order, img } = req.body
            if (order || img) {
                await Object.create({
                    ...req.body,
                    num: numm,
                    img: req.file.filename
                })
            }
            res.json({
                message: "greate job :))"
                // img: req.file.filename
            })
        } catch (err) {
            console.log(err);
            res.status(500).json({
                message: "not connection"
            })
        }
    }
}
module.exports = MainController