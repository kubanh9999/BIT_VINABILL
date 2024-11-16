/**
 * CRUD operations for News
 * @module services/News.service
 *
 */
const { News } = require("../models");

/**
 * Get all categories
 * @returns {Promise<News[]>} A promise that contains the categories
 *
 */
exports.getAllNews = async () => {
  return await News.findAll();
};

/**
 * Get a category by id
 * @param {string} id - The id of the category
 * @returns {Promise<News>} A promise that contains the category
 *
 */
exports.getNewsById = async (id) => {
  return await News.findByPk(id);
};

/**
 * Get a category by name
 * @param {string} name - The name of the category
 * @returns {Promise<News>} A promise that contains the category
 *
 */
exports.getNewsByName = async (name) => {
  return await News.findOne({
    where: {
      name,
    },
  });
};

/**
 * Create a category
 * @param {object} category - The category object
 * @returns {Promise<News>} A promise that contains the category
 *
 */
exports.createNews = async (category) => {
  return await News.create(category);
};

/**
 * Update a category
 * @param {string} id - The id of the category
 * @param {object} category - The category object
 * @returns {Promise<News>} A promise that contains the category
 *
 */
exports.updateNews = async (id, category) => {
  const updatedNews = await News.update(category, {
    where: {
      id,
    },
    returning: true,
  });
  return updatedNews[1][0];
};

/**
 * Delete a category
 * @param {string} id - The id of the category
 * @returns {Promise<News>} A promise that contains the category
 *
 */
exports.deleteNews = async (id) => {
  return await News.destroy({
    where: {
      id,
    },
  });
};
