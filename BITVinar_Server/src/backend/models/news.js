const { Model, DataTypes } = require("sequelize");

module.exports = (sequelize) => {
  class News extends Model {
    static associate(models) {
      // Định nghĩa các mối quan hệ ở đây nếu cần
    }
  }

  News.init(
    {
      id: {
        allowNull: false,
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      content: {
        type: DataTypes.TEXT,
        allowNull: false,
      },
      author:{
        type: DataTypes.STRING,
        allowNull: true,
      },
      image: {
        type: DataTypes.STRING,
        allowNull: true,
      },
    },
    {
      sequelize,
      modelName: "News", // Chữ cái đầu tiên nên viết hoa
      tableName: "News",
      timestamps: true, // Tự động thêm createdAt và updatedAt
    }
  );

  return News; // Phải trả về model News, không phải Blog
};
