const express = require("express");
const router = express.Router();
const MainController = require("../controller");

const multer = require("multer");

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./public");
  },
  filename: function (req, file, cb) {
    const name = Date.now() + file.originalname;
    cb(null, name);
  },
});
const upload = multer({ storage: storage });

router.get("/api", MainController.first);
router.post("/api/start", upload.single("img"), MainController.start)

module.exports = router