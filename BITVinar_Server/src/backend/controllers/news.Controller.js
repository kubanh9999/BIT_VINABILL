const NewsService = require("../services/News.service");

/**
 * Get all Newss
 */
exports.getAllNews = async (req, res) => {
  try {
    const News = await NewsService.getAllNews();
    res.status(200).json(News);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

/**
 * Get a News by id
 */
exports.getNewsById = async (req, res) => {
  const { id } = req.params;
  try {
    const News = await NewsService.getNewsById(id);
    res.status(200).json(News);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.createNews = async (req, res) => {
  try {
    const News = await NewsService.createNews(req.body);
    return res.status(201).json(News)
  } catch (error) {
    return res.status(500).json({ error: error.message });
  }
};


/**
 * Update a News
 * @param {Request} req
 * @param {Response} res
 *  @return {Promise<Response>}
 */

exports.updateNews = async (req, res) => {
  const {id} = req.params;
  const News = await NewsService.updateNews(id, req.body);
  return res.status(200).json(News);
}

/**
 * Delete News
 * @param {Request}
 * @param {Response}
 * @returns {Promise<Respone>}
 */
exports.deleteNews = async (req, res) => {
    const { id } = req.params;
    await NewsService.deleteNews(id);
    return res.status(204).end();
};


