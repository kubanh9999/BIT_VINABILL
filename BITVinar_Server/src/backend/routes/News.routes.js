const router = require("express").Router();
const NewsController = require ("../controllers/news.Controller")

router.get("/", NewsController.getAllNews);
router.get("/:id", NewsController.getNewsById);
router.post("/", NewsController.createNews);
router.put("/:id", NewsController.updateNews);
router.delete("/:id", NewsController.deleteNews);
module.exports = router;