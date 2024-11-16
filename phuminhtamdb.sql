CREATE DATABASE  IF NOT EXISTS `phuminhtamdb` 

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('1879698721990979799','Nguyễn Cảnh Phong','84774651178','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfaWQiOiIxNTM1ODQwNzc5MDcxMzUzMTg5IiwidXNlcl9pZCI6IjE4Nzk2OTg3MjE5OTA5Nzk3OTkiLCJpc0FkbWluIjp0cnVlLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTcyNjg4NDA3NCwiZXhwIjoxNzI2OTcwNDc0fQ.b-qkPltuIZ8vYiWq-HOY88Tj0YyVd6wyJLdMje55t8k','2024-09-21 01:34:58','2024-09-21 02:01:14'),('2068434663992333429','Anh Minh','84355843403',NULL,'2024-09-21 02:45:31','2024-09-21 02:45:46'),('3368637342326461234','User Name',NULL,NULL,'2024-11-03 11:05:47','2024-11-03 12:15:44'),('3974492336585586941','Hữu Nhân',NULL,NULL,'2024-11-01 09:55:09','2024-11-01 09:55:21'),('4159276148709533293','Phong',NULL,NULL,'2024-10-05 01:53:23','2024-10-05 01:53:23'),('4984166942559390206','Vỹ','84325598374','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfaWQiOiIzNTQyODIzMzc4MDk1OTYxNjQxIiwidXNlcl9pZCI6IjQ5ODQxNjY5NDI1NTkzOTAyMDYiLCJpc0FkbWluIjp0cnVlLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTczMDcxMDAwOSwiZXhwIjoxNzMwNzk2NDA5fQ.eJWNzmMnb56Wg8Asrs7SGAFerHVe4xnLHMRscS2LyHM','2024-10-01 01:34:59','2024-11-04 08:46:49'),('5896015425603615891','Bùi Trí Thức',NULL,NULL,'2024-09-20 03:35:40','2024-09-20 03:35:40'),('5931620906359078800','Bùi Trí Thức',NULL,NULL,'2024-09-24 02:41:28','2024-09-24 02:41:28'),('6078126932713746840','Nghi','84396297012','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfaWQiOiIxNTM1ODQwNzc5MDcxMzUzMTg5IiwidXNlcl9pZCI6IjYwNzgxMjY5MzI3MTM3NDY4NDAiLCJpc0FkbWluIjp0cnVlLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTcyNzA2NTQ2NCwiZXhwIjoxNzI3MTUxODY0fQ.MA7aH_Tk6n3yZz72hn-OIz9ncOS7b7bVNDYq-FSGYBE','2024-09-23 04:16:03','2024-09-23 04:24:24'),('608012972346918065','Trần Văn Thảo','84911452692',NULL,'2024-09-21 02:40:48','2024-09-24 07:09:51'),('6965354527898826088','Đình Luân','84904249651','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfaWQiOiIxNTM1ODQwNzc5MDcxMzUzMTg5IiwidXNlcl9pZCI6IjY5NjUzNTQ1Mjc4OTg4MjYwODgiLCJpc0FkbWluIjp0cnVlLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTcyNzE2NDUzNiwiZXhwIjoxNzI3MjUwOTM2fQ.UMlBu7gcqJeNpFboTZASh7VO2hJBXKqK9r-Sl6KCuJ8','2024-09-20 03:33:52','2024-09-24 07:55:36'),('759280903754672026','Trần thị đẹt',NULL,NULL,'2024-09-20 03:35:39','2024-09-20 03:35:39'),('759280903754672029','Nguyễn Văn Tèo',NULL,NULL,'2024-09-20 03:35:40','2024-09-20 03:35:40'),('759280903754672031','Nguyễn Văn A',NULL,NULL,'2024-09-20 03:35:40','2024-09-20 03:35:40');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `roles` json NOT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_app_id_customer_id` (`app_id`,`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'1535840779071353189','6965354527898826088','[{\"name\": \"SystemAdmin\", \"permission\": [{\"name\": \"CRUD_Product\", \"description\": \"Permission allow a user create, update, delete products, categories, variant\"}, {\"name\": \"CRUD_Order\", \"description\": \"Permission allow a user create, update, delete Orders\"}, {\"name\": \"CRUD_Customer\", \"description\": \"Permission allow a user create, update, delete Customers\"}]}]',NULL,'2024-09-20 03:33:52','2024-09-20 03:39:09'),(2,'1535840779071353189','1879698721990979799','[{\"name\": \"SystemAdmin\", \"permission\": [{\"name\": \"CRUD_Product\", \"description\": \"Permission allow a user create, update, delete products, categories, variant\"}, {\"name\": \"CRUD_Order\", \"description\": \"Permission allow a user create, update, delete Orders\"}, {\"name\": \"CRUD_Customer\", \"description\": \"Permission allow a user create, update, delete Customers\"}]}]',NULL,'2024-09-20 03:33:52','2024-09-20 03:39:09'),(3,'1535840779071353189','6078126932713746840','[{\"name\": \"SystemAdmin\", \"permission\": [{\"name\": \"CRUD_Product\", \"description\": \"Permission allow a user create, update, delete products, categories, variant\"}, {\"name\": \"CRUD_Order\", \"description\": \"Permission allow a user create, update, delete Orders\"}, {\"name\": \"CRUD_Customer\", \"description\": \"Permission allow a user create, update, delete Customers\"}]}]',NULL,'2024-09-20 03:33:52','2024-09-20 03:39:09'),(4,'3542823378095961641','4984166942559390206','[{\"name\": \"SystemAdmin\", \"permission\": [{\"name\": \"CRUD_Product\", \"description\": \"Permission allow a user create, update, delete products, categories, variant\"}, {\"name\": \"CRUD_Order\", \"description\": \"Permission allow a user create, update, delete Orders\"}, {\"name\": \"CRUD_Customer\", \"description\": \"Permission allow a user create, update, delete Customers\"}]}]',NULL,'2024-09-20 03:33:52','2024-09-20 03:39:09');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeradmins`
--
 
CREATE TABLE `customeradmins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `CustomerAdmins_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `CustomerAdmins_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `customeradmins`
--

LOCK TABLES `customeradmins` WRITE;
/*!40000 ALTER TABLE `customeradmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `customeradmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isFeatured` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (129,'Thế Vỹ','Thế Vỹ',30000,'https://res.cloudinary.com/dq3pxd9eq/image/upload/v1730703202/T-Coffee-Shop/tcofee_product_1730703200516_IMG_0665.jpeg.jpg',0,'2024-09-20 03:35:38','2024-11-04 07:07:18',0),(130,'NẾP CÁI HOA VÀNG 2KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \r\n<b><br>NẾP CÁI HOA VÀNG</b>\r\n<br>Nếp cái hoa vàng thuộc dòng gạo trắng, nổi tiếng tại các tỉnh phía Bắc Việt Nam. Gạo nếp cái hoa vàng với bề ngoài là những hạt gạo to tròn và mẩy. Chúng có độ bóng sáng, hạt chắc và to. Khi nấu lên, hạt căng mọng những có độ dẻo rất cao, không khô cũng không quá nhuyễn. Gạo nếp cái hoa vàng được tinh chế, đánh bóng và loại bỏ cám và mầm. Điều này làm tăng chất lượng nấu ăn, thời hạn sử dụng và hương vị của nó, nhưng làm giảm đáng kể giá trị dinh dưỡng của nó. Gạo nếp cái hoa vàng chứa chất xơ, vitamin, khoáng chất và chất chống oxy hóa. Vì vậy, chúng tốt hơn cho những người mắc bệnh tiểu đường. Gạo chứa thêm các vitamin B và một số thành phần tốt cho tim mạch như  chất chống oxy hóa, lignans và chất xơ\r\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\r\n<br> - Calories: 380 kcal\r\n<br> - Carbohydrate: 82g\r\n<br> - Chất xơ thực phẩm: 1,5g\r\n<br> - Chất béo: 0,78g\r\n<br> - Protein: 7,16g\r\n<b><br>Công dụng sản phẩm:</b>\r\n<br> - Tốt cho những người bị bệnh dạ dày, rối loạn tiền đình, thiểu năng tuần hoàn não, phụ nữ sau sinh hay người bị suy nhược.\r\n<br> - Phòng ngừa bệnh tim mạch, chống oxy hóa, lignans và chất xơ.\r\n<br> - Phòng ngừa cao huyết áp và đột quỵ.',99000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/Nep-cai-hoa-vang-2kg-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-11-04 07:18:13',1),(131,'Nếp Ngỗng 2KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\r\n <b><br>NẾP NGỖNG</b>\r\n<br>Nếp Ngỗng là loại nếp ngon và nổi tiếng của vùng Nam Bộ. Hạt nếp to, hột trông giống như trứng ngỗng thu nhỏ. Sau khi nấu chín, hạt nếp rất dẻo dai, hương thơm nhẹ và đậm đà ngọt nếp như Hoa Vàng của miền Bắc. Sản phẩm được chế biến theo một quy trình sản xuất nghiêm ngặt và quản lý chặt chẽ từ khâu thu mua, sơ chế nên người tiêu dùng có thể hoàn toàn yên tâm về chất lượng. Hơn nữa Nếp ngỗng Phú Minh Tâm còn được đóng túi dày dặn, kín hơi, đảm bảo không để côn trùng và các tác động ngoại cảnh khác làm ảnh hưởng đến chất lượng.\r\n<b>Công dụng sản phẩm:</b>\r\n<br>Được sử dụng chủ yếu để nấu xôi, làm bánh, nhưng vẫn có thể sử dụng để nấu cơm cho bữa ăn hằng ngày. Gạo có xuất xứ và nguồn gốc tự nhiên được cung cấp bởi công ty Phú Minh Tâm không sử dụng hương liệu tạo mùi, đảm bảo hương thơm tự nhiên đặc trưng của từng loại gạo',85000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/Nep-ngong-2kg-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-11-04 07:13:50',0),(132,'Nếp Ngỗng 1KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \r\n<b><br>NẾP NGỖNG</b>\r\n<br>Nếp Ngỗng là loại nếp ngon và nổi tiếng của vùng Nam Bộ. Hạt nếp to, hột trông giống như trứng ngỗng thu nhỏ. Sau khi nấu chín, hạt nếp rất dẻo dai, hương thơm nhẹ và đậm đà ngọt nếp như Hoa Vàng của miền Bắc. Sản phẩm được chế biến theo một quy trình sản xuất nghiêm ngặt và quản lý chặt chẽ từ khâu thu mua, sơ chế nên người tiêu dùng có thể hoàn toàn yên tâm về chất lượng. Hơn nữa Nếp ngỗng Phú Minh Tâm còn được đóng túi dày dặn, kín hơi, đảm bảo không để côn trùng và các tác động ngoại cảnh khác làm ảnh hưởng đến chất lượng.\r\n<b>Công dụng sản phẩm:</b>\r\n<br>Được sử dụng chủ yếu để nấu xôi, làm bánh, nhưng vẫn có thể sử dụng để nấu cơm cho bữa ăn hằng ngày. Gạo có xuất xứ và nguồn gốc tự nhiên được cung cấp bởi công ty Phú Minh Tâm không sử dụng hương liệu tạo mùi, đảm bảo hương thơm tự nhiên đặc trưng của từng loại gạo',47000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/Nep-ngong-1kg-PMT-1-scaled.jpg',1,'2024-09-20 03:35:38','2024-11-04 07:13:44',1),(133,'Nếp Than 1KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n <b><br>NẾP THAN</b>\n<br>Gạo tím than Sóc Trăng là giống gạo được lai tạo từ bởi kỹ sư Hồ Quang Cua – Phó Giám đốc Sở Nông nghiệp và Phát triển nông thôn tỉnh Sóc Trăng. Gạo tím than là loại gạo thực dưỡng chứa hàm lượng anthocyamin rất cao (khoảng 0.4%), một chất màu thiên nhiên có rất nhiều hoạt tính sinh học quý như khả năng chống oxi hóa cao, hạn chế sự suy giảm sức đề kháng, kiềm hãm sự phát triển của tế bào ung thư vì thế hổ trợ rất nhiều trong việc phòng tránh biến chứng của bệnh tiểu đường và phòng ngừa ung thư.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br> – Calories: 160 kcal\n<br> – Carbohydrate: 34g\n<br> – Chất xơ thực phẩm: 1g\n<br> – Protein: 4g\n<br><b>Công dụng sản phẩm:</b>\n<br> – Giúp loại bỏ độc tố và ngăn chặn sự tích tụ chất béo trong gan.\n<br> – Hỗ trợ giảm cân rất hiệu quả, lựa chọn lành mạnh cho người ăn kiêng và tiểu đường.\n<br> – Hỗ trợ cải thiện tiêu hóa, giảm các vấn đề về dạ dày\n<br> – Giảm nồng độ cholesterol xấu và tăng nồng độ cholesterol tốt.',50000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/Nep-than-1kg-PMT-1-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',1),(134,'Nếp Sáp 1KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>NẾP SÁP</b>\n<br>Nếp sáp là đặc sản nổi tiếng của vùng Đồng Tháp Mười có hương vị tự nhiên, thơm ngon. Nếp Sáp có tính dẻo dính, rất phù hợp để nấu xôi, hay những món bánh truyền thống. Nếp Sáp là một trong những loại gạo nếp thông dụng nhất. Hạt nếp thon, hơi dài, đục màu, hương vị dịu nhẹ. Gạo được ứng dụng rất nhiều trong chế biến ẩm thực. Được chế biến theo một quy trình sản xuất nghiêm ngặt và quản lý chặt chẽ từ khâu thu mua, sơ chế nên người tiêu dùng có thể hoàn toàn yên tâm về chất lượng.\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\n<br> – Calories: 340 kcal\n<br> – Carbohydrate: 75g\n<br> – Protein: 7g\n<b><br>Công dụng sản phẩm:</b>\n<br> – Từ gạo Nếp Sáp có thể chế biến các món như cơm nếp, xôi, bánh chưng, các món chè, hoặc cất rượu nếp, rượu đế và ngâm rượu cần.\n<br> – Bột nếp được dùng để làm các món bánh như bánh nếp, bánh giầy, bánh rán, bánh trôi, bánh gai, bánh cốm…\n<br>+ Xôi lá cẩm, món ăn Việt Nam từ gạo nếp.\n<br>+ Cơm nếp gói lá chuối\n<br>+ Xôi trắng\n<br>+ Bánh trôi làm từ bột gạo nếp',42000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/Nep-sap-1kg-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(135,'Nếp Sáp 2KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>NẾP SÁP</b>\n<br>Nếp sáp là đặc sản nổi tiếng của vùng Đồng Tháp Mười có hương vị tự nhiên, thơm ngon. Nếp Sáp có tính dẻo dính, rất phù hợp để nấu xôi, hay những món bánh truyền thống. Nếp Sáp là một trong những loại gạo nếp thông dụng nhất. Hạt nếp thon, hơi dài, đục màu, hương vị dịu nhẹ. Gạo được ứng dụng rất nhiều trong chế biến ẩm thực. Được chế biến theo một quy trình sản xuất nghiêm ngặt và quản lý chặt chẽ từ khâu thu mua, sơ chế nên người tiêu dùng có thể hoàn toàn yên tâm về chất lượng.\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\n<br> – Calories: 340 kcal\n<br> – Carbohydrate: 75g\n<br> – Protein: 7g\n<b><br>Công dụng sản phẩm:</b>\n<br> – Từ gạo Nếp Sáp có thể chế biến các món như cơm nếp, xôi, bánh chưng, các món chè, hoặc cất rượu nếp, rượu đế và ngâm rượu cần.\n<br> – Bột nếp được dùng để làm các món bánh như bánh nếp, bánh giầy, bánh rán, bánh trôi, bánh gai, bánh cốm…\n<br>+ Xôi lá cẩm, món ăn Việt Nam từ gạo nếp.\n<br>+ Cơm nếp gói lá chuối\n<br>+ Xôi trắng\n<br>+ Bánh trôi làm từ bột gạo nếp',72000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/Nep-sap-2kg-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(136,'Nếp Tóc 1KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n<b><br>NẾP TÓC<br>\n<br>Nếp tóc thơm là loại nếp ngon, hạt nếp trắng, thuôn dài. Sau khi nấu chín, hạt nếp rất dẻo dai, hương thơm nhẹ và ngọt đậm đà. Nếp thích hợp dùng để nấu xôi hoặc trộn cùng các loại gạo khác để cơm trở nên dẻo và ngon hơn. Ngoài ra, bạn có thể sử dụng Nếp tóc thơm Phú Minh Tâm để làm bánh, nấu chè.\n<br>Sản phẩm được chế biến theo một quy trình sản xuất nghiêm ngặt và quản lý chặt chẽ từ khâu thu mua, sơ chế nên người tiêu dùng có thể hoàn toàn yên tâm về chất lượng. Hơn nữa Nếp tóc thơm Phú Minh Tâm  còn được đóng túi dày dặn, kín hơi, đảm bảo không để côn trùng và các tác động ngoại cảnh khác làm ảnh hưởng đến chất lượng của nếp.\n<b><br>Công dụng sản phẩm:</b>\n<br>Nếp tóc thơm có hàm lượng giá trị dinh dưỡng cao, chứa protein, tinh bột, đường, vitamin nhóm B (có nhiều trong cám gạo), bổ sung năng lượng và rất tốt cho sức khỏe.',42000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/Nep-toc-1kg-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(137,'Nếp Tóc 2KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n<b><br>NẾP TÓC<br>\n<br>Nếp tóc thơm là loại nếp ngon, hạt nếp trắng, thuôn dài. Sau khi nấu chín, hạt nếp rất dẻo dai, hương thơm nhẹ và ngọt đậm đà. Nếp thích hợp dùng để nấu xôi hoặc trộn cùng các loại gạo khác để cơm trở nên dẻo và ngon hơn. Ngoài ra, bạn có thể sử dụng Nếp tóc thơm Phú Minh Tâm để làm bánh, nấu chè.\n<br>Sản phẩm được chế biến theo một quy trình sản xuất nghiêm ngặt và quản lý chặt chẽ từ khâu thu mua, sơ chế nên người tiêu dùng có thể hoàn toàn yên tâm về chất lượng. Hơn nữa Nếp tóc thơm Phú Minh Tâm  còn được đóng túi dày dặn, kín hơi, đảm bảo không để côn trùng và các tác động ngoại cảnh khác làm ảnh hưởng đến chất lượng của nếp.\n<b><br>Công dụng sản phẩm:</b>\n<br>Nếp tóc thơm có hàm lượng giá trị dinh dưỡng cao, chứa protein, tinh bột, đường, vitamin nhóm B (có nhiều trong cám gạo), bổ sung năng lượng và rất tốt cho sức khỏe.',81000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/Nep-toc-2kg-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',1),(138,'Đậu Đen 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU ĐEN</b>\n\n<br>Ở Việt Nam hạt đậu đen được xem là loại thực phẩm bổ dưỡng cao cấp. Món ăn có đậu đen vừa có giá trị bổ dưỡng vừa là bài thuốc thanh lọc và làm mát cơ thể. Phú Minh Tâm mang đến những hạt đậu đen thơm ngon, chất lượng. Hạt đậu đen được sử sụng trong các món ăn như: Cháo đậu đen, cơm nếp hay xôi đậu đen, chè đậu đen, thịt hầm đậu đen, ngoài ra đậu đen còn được dùng trộn với nếp để gói bánh tét, bánh ú, bánh lá dừa. Bên cạnh đó đậu đen còn dùng làm thuốc chữa bệnh.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\n\n<br>– Calories: 325 kcal – Carbohydrate: 53,3g\n\n<br>– Chất xơ thực phẩm: 4,0g\n\n<br>– Chất béo: 1,7g\n\n<br>– Protein: 24,2g\n\n<b><br>Công dụng sản phẩm:</b>\n\n<br>– Giải độc, bổ thận, bổ huyết, giải độc cơ thể, phụ nữ dùng lâu ngày thì làm đẹp dung nhan.\n\n<br>– Bổ sung protein tốt cho cơ thể, không có chứa hàm lượng calo quá cao và nhiều chất béo như các loại thực phẩm gốc động vật nên nó rất có lợi cho nhóm người ăn kiêng.\n\n<br>– Khử độc sunlfates, chứa nhiều các chất chống oxy hoá, làm giảm nguy cơ mắc các bệnh về tim mạch, tăng cường năng lượng cho cơ thể, ổn định đường huyết, tăng cường sắt và men gan cho cơ thể.',20000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-den-250gr-pmt-3341-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(139,'Đậu Đen 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n <b><br>ĐẬU ĐEN</b>\n\n<br>Ở Việt Nam hạt đậu đen được xem là loại thực phẩm bổ dưỡng cao cấp. Món ăn có đậu đen vừa có giá trị bổ dưỡng vừa là bài thuốc thanh lọc và làm mát cơ thể. Phú Minh Tâm mang đến những hạt đậu đen thơm ngon, chất lượng. Hạt đậu đen được sử sụng trong các món ăn như: Cháo đậu đen, cơm nếp hay xôi đậu đen, chè đậu đen, thịt hầm đậu đen, ngoài ra đậu đen còn được dùng trộn với nếp để gói bánh tét, bánh ú, bánh lá dừa. Bên cạnh đó đậu đen còn dùng làm thuốc chữa bệnh.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\n\n<br>– Calories: 325 kcal – Carbohydrate: 53,3g\n\n<br>– Chất xơ thực phẩm: 4,0g\n\n<br>– Chất béo: 1,7g\n\n<br>– Protein: 24,2g\n\n<b><br>Công dụng sản phẩm:</b>\n\n<br>– Giải độc, bổ thận, bổ huyết, giải độc cơ thể, phụ nữ dùng lâu ngày thì làm đẹp dung nhan.\n\n<br>– Bổ sung protein tốt cho cơ thể, không có chứa hàm lượng calo quá cao và nhiều chất béo như các loại thực phẩm gốc động vật nên nó rất có lợi cho nhóm người ăn kiêng.\n\n<br>– Khử độc sunlfates, chứa nhiều các chất chống oxy hoá, làm giảm nguy cơ mắc các bệnh về tim mạch, tăng cường năng lượng cho cơ thể, ổn định đường huyết, tăng cường sắt và men gan cho cơ thể.',35000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/Dau-den-450gr-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(140,'Đậu Đen Xanh Lòng 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>ĐẬU ĐEN XANH LÒNG</b>\n\n<br<Đậu đen xanh lòng có nguồn gốc ở Châu Phi, từ đó lan sang Châu Á. Hiện nay cây đậu đen được trồng ở khắp các vùng trên lãnh thổ Việt Nam đặc biệt ở các cánh đồng rộng lớn của Miền Tây. Cũng giống như loại đậu đen thông thường, nhưng khác với phần ruột có màu trắng, đậu đen xanh lòng có màu xanh đặc trưng. Kích thước hạt đậu cũng nhỏ hơn đậu đen thông thường nhiều, đồng thời màu đen bên ngoài cũng bóng hơn, mẩy và cứng cáp hơn nhiều. Đậu đen xanh lòng ăn rất ngon, béo ngậy và còn chứa nhiều Vitamin A, Vitamin B1, B2.\n\n<br>Thông tin dinh dưỡng có trong 100gr\n\n<br>– Calories: 325 kcal\n\n<br>– Carbohydrate: 53,3g\n\n<br>– Chất xơ thực phẩm: 4,0g\n\n<br>– Chất béo: 1,7g\n\n<br>– Protein: 24,2g\n\n<b><br>Công dụng sản phẩm:</b>\n\n<br>– Thanh lọc cơ thể, giải độc, bổ thận, bổ máu.\n\n<br>– Phòng chống bệnh tiểu đường, giảm nguy cơ mắc bệnh tim mạch.\n\n<br>– Làm chậm quá trình lão hoá, làm đẹp da.\n\n<br>– Tăng cường hệ tiêu hóa, bổ thận cực kỳ tốt.',28000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/Dau-den-xanh-long-250gr-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(141,'Đậu Đen Xanh Lòng 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU ĐEN XANH LÒNG</b>\n\n<br<Đậu đen xanh lòng có nguồn gốc ở Châu Phi, từ đó lan sang Châu Á. Hiện nay cây đậu đen được trồng ở khắp các vùng trên lãnh thổ Việt Nam đặc biệt ở các cánh đồng rộng lớn của Miền Tây. Cũng giống như loại đậu đen thông thường, nhưng khác với phần ruột có màu trắng, đậu đen xanh lòng có màu xanh đặc trưng. Kích thước hạt đậu cũng nhỏ hơn đậu đen thông thường nhiều, đồng thời màu đen bên ngoài cũng bóng hơn, mẩy và cứng cáp hơn nhiều. Đậu đen xanh lòng ăn rất ngon, béo ngậy và còn chứa nhiều Vitamin A, Vitamin B1, B2.\n\n<br>Thông tin dinh dưỡng có trong 100gr\n\n<br>– Calories: 325 kcal\n\n<br>– Carbohydrate: 53,3g\n\n<br>– Chất xơ thực phẩm: 4,0g\n\n<br>– Chất béo: 1,7g\n\n<br>– Protein: 24,2g\n\n<b><br>Công dụng sản phẩm:</b>\n\n<br>– Thanh lọc cơ thể, giải độc, bổ thận, bổ máu.\n\n<br>– Phòng chống bệnh tiểu đường, giảm nguy cơ mắc bệnh tim mạch.\n\n<br>– Làm chậm quá trình lão hoá, làm đẹp da.\n\n<br>– Tăng cường hệ tiêu hóa, bổ thận cực kỳ tốt.',55000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-den-xanh-long-450gr-pmt-8594-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(142,'Đậu Đỏ 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \r\n<b><br>ĐẬU ĐỎ</b>\r\n\r\n<br>Đậu đỏ là nguyên liệu quen thuộc, thường xuất hiện trong các bữa ăn hằng ngày. Đậu đỏ được xem là loại thực phẩm bổ dưỡng, được trồng và chăm bón bằng các loại phân vi sinh tự nhiên, không sử dụng phân thuốc hoá học, không chứa chất bảo quản. Món ăn có đậu đỏ vừa có giá trị bổ dưỡng vừa là bài thuốc thanh lọc và làm mát cơ thể. Trong đậu đỏ nhỏ có chứa protit; chất béo, gluxit, canxi, photpho, sắt, vitamin B và một số chất khác\r\n\r\n<br>Thông tin dinh dưỡng có trong 100gr\r\n<br>– Calories: 329kcal\r\n<br>– Carbohydrate: 63g\r\n<br>– Chất xơ thực phẩm: 2g\r\n<br>– Chất béo: 0,5g\r\n<br>– Protein: 20g\r\n\r\n<b><br>Công dụng sản phẩm:</b>\r\n<br>– Trị nhiều bệnh thường gặp, như bệnh đường ruột: đau dạ dày, tả, lỵ, đầy trướng bụng; bệnh đường tiết niệu: tiểu ngắn, đỏ, tiểu buốt, dắt; bệnh gan, mật; hoặc mụn nhọt…\r\n<br>– Ngăn ngừa các bệnh tim mạch',24500,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-do-250gr-pmt-4894-1-scaled.jpg',1,'2024-09-20 03:35:38','2024-11-04 07:13:31',1),(143,'Đậu Đỏ 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n<b><br>ĐẬU ĐỎ</b>\n\n<br>Đậu đỏ là nguyên liệu quen thuộc, thường xuất hiện trong các bữa ăn hằng ngày. Đậu đỏ được xem là loại thực phẩm bổ dưỡng, được trồng và chăm bón bằng các loại phân vi sinh tự nhiên, không sử dụng phân thuốc hoá học, không chứa chất bảo quản. Món ăn có đậu đỏ vừa có giá trị bổ dưỡng vừa là bài thuốc thanh lọc và làm mát cơ thể. Trong đậu đỏ nhỏ có chứa protit; chất béo, gluxit, canxi, photpho, sắt, vitamin B và một số chất khác\n\n<br>Thông tin dinh dưỡng có trong 100gr\n<br>– Calories: 329kcal\n<br>– Carbohydrate: 63g\n<br>– Chất xơ thực phẩm: 2g\n<br>– Chất béo: 0,5g\n<br>– Protein: 20g\n\n<b><br>Công dụng sản phẩm:</b>\n<br>– Trị nhiều bệnh thường gặp, như bệnh đường ruột: đau dạ dày, tả, lỵ, đầy trướng bụng; bệnh đường tiết niệu: tiểu ngắn, đỏ, tiểu buốt, dắt; bệnh gan, mật; hoặc mụn nhọt…\n<br>– Ngăn ngừa các bệnh tim mạch',24000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-do-450gr-pmt-8046-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(144,'Đậu Đỏ Tây 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>ĐẬU ĐỎ TÂY</b>\n\n<br>Đậu đỏ tây tên khác Kidney Bean theo nghĩa tiếng Việt là đậu thận bắt nguồn từ hình dạng và màu sắc giống với quả thận. Ở Việt Nam hạt đậu đỏ tây được xem là loại thực phẩm rất bổ dưỡng, được trồng rất nhiều ở khu vực miền Tây. Cây đậu cao khoảng 0,5m – 3m. Thân mọc thẳng hoặc thân leo, phân nhánh. Mỗi cuống lá đậu thường có 3 lá, mọc đối xứng với nhau, lá hình thoi, chét nhọn và có màu xanh đậm, đường gân ở giữa. Hoa đậu phát triển ở phần nách thân, có màu tím, trắng, vàng. Quả đậu dài khoảng 15cm, mỗi quả chứa 6-8 hạt, quả có màu xanh. Khi đậu già chín chuyển màu vàng, vàng cỏ úa, nâu. Hạt khi già, tách vỏ có màu đỏ hình quả thận.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr<b>\n\n<br>– Calories: 333 kcal\n<br>– Carbohydrate: 60g\n<br>– Đường: 2g\n<br>– Chất xơ thực phẩm: 15g\n<br>– Chất béo: 1g\n<br>– Protein: 24g\n\n<b><br>Công dụng sản phẩm:<b>\n\n<br>Ngăn ngừa ung thư, ức chế và ngăn chặn các tế bào ung thư phát triển, lây lan thêm\n<br>Phòng và điều trị bệnh tiểu đường giúp kiểm soát lượng đường trong máu tăng lên\n<br>Giảm cân hiệu quả\n<br>Chữa sỏi thận giúp bào mòn, đào thải các viên sỏi thận tồn đọng trong thận ra ngoài một cách dễ dàng',26900,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-do-tay-250gr-pmt-4980-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(145,'Đậu Đỏ Tây 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n <b><br>ĐẬU ĐỎ TÂY</b>\n\n<br>Đậu đỏ tây tên khác Kidney Bean theo nghĩa tiếng Việt là đậu thận bắt nguồn từ hình dạng và màu sắc giống với quả thận. Ở Việt Nam hạt đậu đỏ tây được xem là loại thực phẩm rất bổ dưỡng, được trồng rất nhiều ở khu vực miền Tây. Cây đậu cao khoảng 0,5m – 3m. Thân mọc thẳng hoặc thân leo, phân nhánh. Mỗi cuống lá đậu thường có 3 lá, mọc đối xứng với nhau, lá hình thoi, chét nhọn và có màu xanh đậm, đường gân ở giữa. Hoa đậu phát triển ở phần nách thân, có màu tím, trắng, vàng. Quả đậu dài khoảng 15cm, mỗi quả chứa 6-8 hạt, quả có màu xanh. Khi đậu già chín chuyển màu vàng, vàng cỏ úa, nâu. Hạt khi già, tách vỏ có màu đỏ hình quả thận.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr<b>\n\n<br>– Calories: 333 kcal\n<br>– Carbohydrate: 60g\n<br>– Đường: 2g\n<br>– Chất xơ thực phẩm: 15g\n<br>– Chất béo: 1g\n<br>– Protein: 24g\n\n<b><br>Công dụng sản phẩm:<b>\n\n<br>Ngăn ngừa ung thư, ức chế và ngăn chặn các tế bào ung thư phát triển, lây lan thêm\n<br>Phòng và điều trị bệnh tiểu đường giúp kiểm soát lượng đường trong máu tăng lên\n<br>Giảm cân hiệu quả\n<br>Chữa sỏi thận giúp bào mòn, đào thải các viên sỏi thận tồn đọng trong thận ra ngoài một cách dễ dàng',53000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-do-tay-450gr-pmt-6253-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',1),(146,'Đậu Nành 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n<br><b>ĐẬU NÀNH</b>\n<br>Đậu nành có t ên khác là Soya Bean, được trồng ở nhiều địa phương trên khắp cả nước vào từng thời điểm khác nhau nên có cả vụ xuân, vụ hè và vụ đông. Trong đậu nành có đủ các acid amin cơ bản như isoleucin, leucin, lysin, metionin, phenylalanin, tryptophan, valin. Ngoài ra, đậu nành được coi là một nguồn cung cấp protein hoàn chỉnh vì chứa một lượng đáng kể các amino acid không thay thế cần thiết cho cơ thể.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\n<br>– Calories: 400 kcal\n<br>– Carbohydrate: 24,6g\n<br>– Chất xơ thực phẩm: 4,5g\n<br>– Chất béo: 18,4g\n<br>– Protein: 34g\n\n<b><br>Công dụng sản phẩm:</b>\n<br>Khi kết hợp với các dược liệu khác, đậu nành trở thành bài thuốc quý, giúp chữa suy nhược cơ thể, đổ mồ hôi trộm (đậu nành, hạt tiểu mạch, táo tàu), chữa suy nhược thần kinh, giảm trí nhớ, ăn ngủ kém (đậu nành, liên nhục, hoài sơn, ý dĩ, sa nhân, sơn tra, cẩu tích)…\n<br>Giảm huyết áp, giảm lượng cholesterol trong máu, ngăn ngừa khả năng xơ cứng động mạch và tốt cho tim mạch.\n<br>Hỗ trợ phòng trị béo phì, tiểu đường, bệnh tim mạch..	\n<br>Chống lão hóa, làm cho da dẻ hồng hào, tăng lượng vitamin B1 giúp da mặt ít nhăn.',14000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-nanh-250gr-pmt-0963-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(147,'Đậu Nành 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <br><b>ĐẬU NÀNH</b>\n<br>Đậu nành có t ên khác là Soya Bean, được trồng ở nhiều địa phương trên khắp cả nước vào từng thời điểm khác nhau nên có cả vụ xuân, vụ hè và vụ đông. Trong đậu nành có đủ các acid amin cơ bản như isoleucin, leucin, lysin, metionin, phenylalanin, tryptophan, valin. Ngoài ra, đậu nành được coi là một nguồn cung cấp protein hoàn chỉnh vì chứa một lượng đáng kể các amino acid không thay thế cần thiết cho cơ thể.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\n<br>– Calories: 400 kcal\n<br>– Carbohydrate: 24,6g\n<br>– Chất xơ thực phẩm: 4,5g\n<br>– Chất béo: 18,4g\n<br>– Protein: 34g\n\n<b><br>Công dụng sản phẩm:</b>\n<br>Khi kết hợp với các dược liệu khác, đậu nành trở thành bài thuốc quý, giúp chữa suy nhược cơ thể, đổ mồ hôi trộm (đậu nành, hạt tiểu mạch, táo tàu), chữa suy nhược thần kinh, giảm trí nhớ, ăn ngủ kém (đậu nành, liên nhục, hoài sơn, ý dĩ, sa nhân, sơn tra, cẩu tích)…\n<br>Giảm huyết áp, giảm lượng cholesterol trong máu, ngăn ngừa khả năng xơ cứng động mạch và tốt cho tim mạch.\n<br>Hỗ trợ phòng trị béo phì, tiểu đường, bệnh tim mạch..	\n<br>Chống lão hóa, làm cho da dẻ hồng hào, tăng lượng vitamin B1 giúp da mặt ít nhăn.',34000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-nanh-450gr-pmt-3327-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(148,'Đậu ngự 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU NGỰ</>\n<br>Đậu ngự có tên khác là Phaseolus có nguồn gốc ở Châu Mỹ (Pêru, Nam Mỹ và vùng Caribê), nay được trồng ở các vùng nhiệt đới và thuần hoá. Hiện nay cũng được trồng khắp các vùng lãnh thổ nước ta. Đậu ngự chứa nhiều dinh dưỡng rất tốt cho sức khoẻ, kích thích vị giác giúp ăn ngon hơn, giảm cảm giác thèm ăn thích hợp cho người cần giảm cân, là một trong những nguồn cấp tốt nhất các sợi hòa tan giúp điều hòa vận chuyển thức ăn trong ruột và giải trừ cholesterol, giúp ổn định lượng đường trong máu.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\n<br>– Calories: 115 kcal\n<br>– Carbohydrate: 20,88g\n<br>– Chất xơ thực phẩm: 7g\n<br>– Chất béo: 0,38g\n<br>– Protein: 7,8g\n\n<b><br>Công dụng sản phẩm:</b>\n<br>– Cải thiện tình trạng miễn nhiễm và làm giảm nguy cơ ung thư ở vú, tiền liệt tuyến và trực tràng.\n<br>– Phòng ngừa ung thư và giảm cholesterol trong máu.\n<br>– Là nguồn cung cấp vitamin B9, sắt, vitamin C, kẽm, kali… từ đó hỗ trợ hệ miễn dịch trong cơ thể, tái tạo các cấu trúc di truyền bị sai phạm, hư hỏng, giúp cho sự tạo tinh trùng, kích thích sự phát triển của thai nhi, giúp truyền tín hiệu trong hệ thần kinh và sự co bóp của cơ, chống nấm, chống virus…\n<br>– Hạn chế việc hình thành sạn thận, giải ngộ độc chì.',26500,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-ngu-250gr-pmt-0365-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(149,'Đậu Ngự 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>ĐẬU NGỰ</>\n<br>Đậu ngự có tên khác là Phaseolus có nguồn gốc ở Châu Mỹ (Pêru, Nam Mỹ và vùng Caribê), nay được trồng ở các vùng nhiệt đới và thuần hoá. Hiện nay cũng được trồng khắp các vùng lãnh thổ nước ta. Đậu ngự chứa nhiều dinh dưỡng rất tốt cho sức khoẻ, kích thích vị giác giúp ăn ngon hơn, giảm cảm giác thèm ăn thích hợp cho người cần giảm cân, là một trong những nguồn cấp tốt nhất các sợi hòa tan giúp điều hòa vận chuyển thức ăn trong ruột và giải trừ cholesterol, giúp ổn định lượng đường trong máu.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr</b>\n<br>– Calories: 115 kcal\n<br>– Carbohydrate: 20,88g\n<br>– Chất xơ thực phẩm: 7g\n<br>– Chất béo: 0,38g\n<br>– Protein: 7,8g\n\n<b><br>Công dụng sản phẩm:</b>\n<br>– Cải thiện tình trạng miễn nhiễm và làm giảm nguy cơ ung thư ở vú, tiền liệt tuyến và trực tràng.\n<br>– Phòng ngừa ung thư và giảm cholesterol trong máu.\n<br>– Là nguồn cung cấp vitamin B9, sắt, vitamin C, kẽm, kali… từ đó hỗ trợ hệ miễn dịch trong cơ thể, tái tạo các cấu trúc di truyền bị sai phạm, hư hỏng, giúp cho sự tạo tinh trùng, kích thích sự phát triển của thai nhi, giúp truyền tín hiệu trong hệ thần kinh và sự co bóp của cơ, chống nấm, chống virus…\n<br>– Hạn chế việc hình thành sạn thận, giải ngộ độc chì.',50500,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-ngu-450gr-pmt-0012-1-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(150,'Đậu Phộng 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n<b><br>ĐẬU PHỘNG</b>\n<br>Đậu phộng có tên khác là Peanuts. Hiện nay cây đậu phộng có khoảng 1000 giống khác nhau được trồng khắp các nước vùng nhiệt đới và khắp các vùng lãnh thổ Việt Nam. Đậu phộng rất giàu chất dinh dưỡng, cung cấp hơn 30 chất dinh dưỡng thiết yếu và dinh dưỡng thực vật . Đậu phộng là một nguồn tốt của niacin, folate, chất xơ,vitamin E, magie và phospho.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 570 kcal\n<br>– Carbohydrate: 21g\n<br>-Chất xơ thực phẩm: 9g\n<br>-Chất béo: 48g\n<br>-Protein: 25g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Bổ tỳ, dưỡng vị, nhuận phế, lợi tràng, tiêu đờm, điều hòa huyết khí, tiêu sưng, cầm máu, lợi tiểu, tăng tiết sữa, mát họng, giảm cholesterol, chống lão hóa.\n<br>– Chữa bệnh suy nhược (làm việc quá sức), lao lực, làm dịu các cơn đau bụng, và phối hợp với quế, gừng, làm dịu các cơn đau bụng kinh.\n<br>– Tăng lực, bồi bổ cơ thể, hạ huyết áp, giảm mỡ máu và cầm máu.\n<br>– Chữa xuất huyết, và kích thích tủy sống tạo ra tiểu cầu',29500,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-phong-250gr-pmt-3477-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(151,'Đậu Phộng 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n <b><br>ĐẬU PHỘNG</b>\n<br>Đậu phộng có tên khác là Peanuts. Hiện nay cây đậu phộng có khoảng 1000 giống khác nhau được trồng khắp các nước vùng nhiệt đới và khắp các vùng lãnh thổ Việt Nam. Đậu phộng rất giàu chất dinh dưỡng, cung cấp hơn 30 chất dinh dưỡng thiết yếu và dinh dưỡng thực vật . Đậu phộng là một nguồn tốt của niacin, folate, chất xơ,vitamin E, magie và phospho.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 570 kcal\n<br>– Carbohydrate: 21g\n<br>-Chất xơ thực phẩm: 9g\n<br>-Chất béo: 48g\n<br>-Protein: 25g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Bổ tỳ, dưỡng vị, nhuận phế, lợi tràng, tiêu đờm, điều hòa huyết khí, tiêu sưng, cầm máu, lợi tiểu, tăng tiết sữa, mát họng, giảm cholesterol, chống lão hóa.\n<br>– Chữa bệnh suy nhược (làm việc quá sức), lao lực, làm dịu các cơn đau bụng, và phối hợp với quế, gừng, làm dịu các cơn đau bụng kinh.\n<br>– Tăng lực, bồi bổ cơ thể, hạ huyết áp, giảm mỡ máu và cầm máu.\n<br>– Chữa xuất huyết, và kích thích tủy sống tạo ra tiểu cầu',49900,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-phong-450gr-pmt-7176-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(152,'Đậu Trắng 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n<b><br> ĐẬU TRẮNG</b>\n<br>Đậu trắng có tên khoa học là Cowpea-Black-eyed peas là một loại thực phẩm giàu chất dinh dưỡng vì chứa nhiều chất xơ và protein. Đậu trắng được trồng ở nhiều vùng miền cả nước. Đây cũng là nguồn thực phẩm cung cấp nhiều vi chất dinh dưỡng, bao gồm folate, magie và vitamin B6. Đậu trắng chứa hàm lượng dinh dưỡng và vitamin cao. Đây chính là lựa chọn tuyệt vời để làm phong phú thêm bữa ăn hàng ngày của bạn.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 327 kcal\n<br>– Carbohydrate: 53,8g\n<br>– Chất xơ thực phẩm: 3,6g\n<br>– Chất béo: 2,1g\n<br>– Protein: 23,2g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Chống lại các bệnh mãn tính, bao gồm bệnh tim mạch, tiểu đường và một số bệnh ung thư.\n<br>– Điều trị bệnh cao huyết áp, có tác dụng kiểm soát, ổn định huyết áp ở mức an toàn, tránh các trường hợp sốc, huyết áp lên, đột quỵ…\n<br>– Điều trị bệnh thiếu máu, thiếu hụt sắc tố hemoglobin\n<br>– Kiểm soát cân nặng hiệu quả, chất xơ có trong đậu hạn chế các cơn đói, giúp no lâu.',23000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-trang-250gr-pmt-3681-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(153,'Đậu Trắng 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br> ĐẬU TRẮNG</b>\n<br>Đậu trắng có tên khoa học là Cowpea-Black-eyed peas là một loại thực phẩm giàu chất dinh dưỡng vì chứa nhiều chất xơ và protein. Đậu trắng được trồng ở nhiều vùng miền cả nước. Đây cũng là nguồn thực phẩm cung cấp nhiều vi chất dinh dưỡng, bao gồm folate, magie và vitamin B6. Đậu trắng chứa hàm lượng dinh dưỡng và vitamin cao. Đây chính là lựa chọn tuyệt vời để làm phong phú thêm bữa ăn hàng ngày của bạn.\n\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 327 kcal\n<br>– Carbohydrate: 53,8g\n<br>– Chất xơ thực phẩm: 3,6g\n<br>– Chất béo: 2,1g\n<br>– Protein: 23,2g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Chống lại các bệnh mãn tính, bao gồm bệnh tim mạch, tiểu đường và một số bệnh ung thư.\n<br>– Điều trị bệnh cao huyết áp, có tác dụng kiểm soát, ổn định huyết áp ở mức an toàn, tránh các trường hợp sốc, huyết áp lên, đột quỵ…\n<br>– Điều trị bệnh thiếu máu, thiếu hụt sắc tố hemoglobin\n<br>– Kiểm soát cân nặng hiệu quả, chất xơ có trong đậu hạn chế các cơn đói, giúp no lâu.',50000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-trang-450gr-pmt-1097-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(154,'Đậu Trắng Bi 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU TRẮNG BI</b>\n<br>Đậu trắng bi có tên gọi khác là đậu bò hoặc đậu mắt đen vì nhìn hạt đậu có một đốm lớn màu đen, đôi khi màu đỏ hoặc mà nâu trông giống như mắt. Đậu có hương vị đậm đà, kèm chút vị mặn nhẹ. Đậu trắng bi chứa nhiều chất đạm, chất xơ cùng với một số vi chất dinh dưỡng cần thiết cho cơ thể như vitamin B9, vitamin B1 và đồng, các loại vitamin như: 88% DV vitamin B9 (folate), 28% DV vitamin B1 (thiamine), 7% DV vitamin B2,… Nhiều chất khoáng như: DV đồng, sắt, kẽm, photpho,…\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>	\n<br>– Calories: 194 kcal\n<br>– Carbohydrate: 35g\n<br>– Chất xơ thực phẩm: 11g\n<br>– Chất béo: 0,9g\n<br>– Protein: 13g\n<b><br>Công dụng sản phẩm:</b>\n<br>– Bổ sung protein cho cơ thể\n<br>– Cung cấp hàm lượng chất xơ dồi dào\n<br>– Hỗ trợ giảm cân hiệu quả\n<br>– Cải thiện, kiểm soát đường huyết và lipid cho người mắc bệnh tiểu đường',25000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-trang-bi-250gr-pmt-1204-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(155,'Đậu Trắng Bi 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU TRẮNG BI</b>\n<br>Đậu trắng bi có tên gọi khác là đậu bò hoặc đậu mắt đen vì nhìn hạt đậu có một đốm lớn màu đen, đôi khi màu đỏ hoặc mà nâu trông giống như mắt. Đậu có hương vị đậm đà, kèm chút vị mặn nhẹ. Đậu trắng bi chứa nhiều chất đạm, chất xơ cùng với một số vi chất dinh dưỡng cần thiết cho cơ thể như vitamin B9, vitamin B1 và đồng, các loại vitamin như: 88% DV vitamin B9 (folate), 28% DV vitamin B1 (thiamine), 7% DV vitamin B2,… Nhiều chất khoáng như: DV đồng, sắt, kẽm, photpho,…\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>	\n<br>– Calories: 194 kcal\n<br>– Carbohydrate: 35g\n<br>– Chất xơ thực phẩm: 11g\n<br>– Chất béo: 0,9g\n<br>– Protein: 13g\n<b><br>Công dụng sản phẩm:</b>\n<br>– Bổ sung protein cho cơ thể\n<br>– Cung cấp hàm lượng chất xơ dồi dào\n<br>– Hỗ trợ giảm cân hiệu quả\n<br>– Cải thiện, kiểm soát đường huyết và lipid cho người mắc bệnh tiểu đường',46000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-trang-bi-450gr-pmt-9776-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(156,'Đậu Ván 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU VÁN</b>\n<br>Đậu ván có tên khoa học là Lablab purpureus là một giống cây họ đậu, được trồng khá phổ biến  ở nước ta. Ðậu ván có giá trị dinh dưỡng cao. Thành phần hóa học có trong hạt đậu ván bao gồm nước 82,4%; protid 4,5%; lipid 0,1%, glucid 10%, tro 1%, Ca 0,25%; P 0,06mg%; Fe 1,67mg%. Có các loại đường saccharoze, glucose, stachyose, maltose và raffinose. Còn có vitamin A, B2, C và nhiều B1. Đậu ván có chứa lượng chất béo, chất xơ, vitamin và protein vô cùng dồi dào, đem đến nhiều lợi ích vô cùng tuyệt vời cho sức khỏe người sử dụng.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 242 kcal\n<br>– Carbohydrate: 44g\n<br>– Chất xơ thực phẩm: 11g\n<br>– Chất béo: 0,6g\n<br>– Protein: 17g\n<b><br>Công dụng sản phẩm:</b>\n<br>– Dùng làm thuốc bổ tỳ vị, tiêu hóa kém, chữa cảm nắng, miệng khát, nôn mửa, tiêu chảy, đau bụng, tiểu tiện ra máu, phụ nữ khí hư, giúp giải độc rượu, cua, cá, tôm…\n<br>– Ức chế đối với trực khuẩn lỵ, giải độc, chống nôn mửa do bị ngộ độc thức ăn.\n<br>– Hỗ trợ trong việc điều trị viêm dạ dày và viêm ruột cấp tính.',25500,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-van-250gr-pmt-6029-1-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(157,'Đậu Ván 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU VÁN</b>\n<br>Đậu ván có tên khoa học là Lablab purpureus là một giống cây họ đậu, được trồng khá phổ biến  ở nước ta. Ðậu ván có giá trị dinh dưỡng cao. Thành phần hóa học có trong hạt đậu ván bao gồm nước 82,4%; protid 4,5%; lipid 0,1%, glucid 10%, tro 1%, Ca 0,25%; P 0,06mg%; Fe 1,67mg%. Có các loại đường saccharoze, glucose, stachyose, maltose và raffinose. Còn có vitamin A, B2, C và nhiều B1. Đậu ván có chứa lượng chất béo, chất xơ, vitamin và protein vô cùng dồi dào, đem đến nhiều lợi ích vô cùng tuyệt vời cho sức khỏe người sử dụng.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 242 kcal\n<br>– Carbohydrate: 44g\n<br>– Chất xơ thực phẩm: 11g\n<br>– Chất béo: 0,6g\n<br>– Protein: 17g\n<b><br>Công dụng sản phẩm:</b>\n<br>– Dùng làm thuốc bổ tỳ vị, tiêu hóa kém, chữa cảm nắng, miệng khát, nôn mửa, tiêu chảy, đau bụng, tiểu tiện ra máu, phụ nữ khí hư, giúp giải độc rượu, cua, cá, tôm…\n<br>– Ức chế đối với trực khuẩn lỵ, giải độc, chống nôn mửa do bị ngộ độc thức ăn.\n<br>– Hỗ trợ trong việc điều trị viêm dạ dày và viêm ruột cấp tính.',46000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/Dau-van-450gr-PMT-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(158,'Đậu Xanh cà 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU XANH CÀ</b>\n<br>Ở Việt Nam đậu xanh cà được trồng trong khắp cả nước từ Bắc vào Nam. Trong đậu xanh cà còn chứa nhiều loại đường, chủ yếu là saccharose, trong đó hàm lượng glucose chiếm ưu thế hơn so với fructose. Ngoài ra, chất béo của hạt đậu xanh cà có giá trị sinh học tương đối cao vì trong thành phần của nó có 20 acid béo trong đó chứa nhiều acid béo chưa no không thay thế như acid linoleic và acid linolenic. Đậu xanh cà có nguồn vitamin khá đa dạng như A, B1, B2, C, niacin và muối khoáng.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 328 kcal\n<br>– Carbohydrate: 53,1g\n<br>– Chất xơ thực phẩm: 4,7g\n<br>– Chất béo: 2,4g\n<br>– Protein: 23,4g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Thanh nhiệt, mát gan, điều hòa ngũ tạng, bổ nguyên khí, giải được nhiều thứ độc.\n<br>– Làm sáng mắt, nhuận họng, hạ huyết áp, mát buồng mật, bổ dạ dày, thích hợp với các bệnh nhân say nắng, miệng khát, người nóng, thấp nhiệt, ung nhọt, viêm tuyến má, đậu mùa.\n<br>– Làm hạ mỡ máu hữu hiệu, giúp cho cơ thể phòng chống chứng xơ cứng động mạch và bệnh cao huyết áp\n<br>– Làm giảm nguy cơ mắc các bệnh ung thư vú và ung thư tuyến tiền liệt\n<br>– Giúp ngừa ung thư dạ dày\n<br>– Tăng cường hệ miễn dịch cơ thể',20500,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-xanh-ca-250gr-pmt-4194-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(159,'Đậu Xanh Cà 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n <b><br>ĐẬU XANH CÀ</b>\n<br>Ở Việt Nam đậu xanh cà được trồng trong khắp cả nước từ Bắc vào Nam. Trong đậu xanh cà còn chứa nhiều loại đường, chủ yếu là saccharose, trong đó hàm lượng glucose chiếm ưu thế hơn so với fructose. Ngoài ra, chất béo của hạt đậu xanh cà có giá trị sinh học tương đối cao vì trong thành phần của nó có 20 acid béo trong đó chứa nhiều acid béo chưa no không thay thế như acid linoleic và acid linolenic. Đậu xanh cà có nguồn vitamin khá đa dạng như A, B1, B2, C, niacin và muối khoáng.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 328 kcal\n<br>– Carbohydrate: 53,1g\n<br>– Chất xơ thực phẩm: 4,7g\n<br>– Chất béo: 2,4g\n<br>– Protein: 23,4g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Thanh nhiệt, mát gan, điều hòa ngũ tạng, bổ nguyên khí, giải được nhiều thứ độc.\n<br>– Làm sáng mắt, nhuận họng, hạ huyết áp, mát buồng mật, bổ dạ dày, thích hợp với các bệnh nhân say nắng, miệng khát, người nóng, thấp nhiệt, ung nhọt, viêm tuyến má, đậu mùa.\n<br>– Làm hạ mỡ máu hữu hiệu, giúp cho cơ thể phòng chống chứng xơ cứng động mạch và bệnh cao huyết áp\n<br>– Làm giảm nguy cơ mắc các bệnh ung thư vú và ung thư tuyến tiền liệt\n<br>– Giúp ngừa ung thư dạ dày\n<br>– Tăng cường hệ miễn dịch cơ thể',33500,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-xanh-ca-450gr-pmt-0942-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(160,'Đậu Xanh Hạt 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>ĐẬU XANH HẠT</b>\n<br>Đậu xanh hạt có tên khác là Mung bean là cây thân thảo nhỏ, mọc đứng, sống quanh năm. Trong đậu xanh còn chứa nhiều loại đường, chủ yếu là saccharose, trong đó hàm lượng glucose chiếm ưu thế hơn so với fructose. Ngoài ra, chất béo của hạt đậu xanh có giá trị sinh học tương đối cao vì trong thành phần của nó có 20 acid béo trong đó chứa nhiều acid béo chưa no không thay thế như acid linoleic và acid linolenic. Đậu xanh có nguồn vitamin khá đa dạng như A, B1, B2, C, niacin và muối khoáng.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 328 kcal\n<br>– Carbohydrate: 53,1g\n<br>– Chất xơ thực phẩm: 4,7g\n<br>– Chất béo: 2,4g\n<br>– Protein: 23,4g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Ngăn ngừa ung thư\n<br>– Cung cấp dưỡng chất cho cơ thể\n<br>– Hỗ trợ giảm cân hiệu quả\n<br>– Ổn định đường huyết.\n<br>– Thanh lọc cơ thể, chữa khàn tiếng.\n<br>– Tốt cho phụ nữ có thai.\n<br>– Hỗ trợ làm đẹp da.',21500,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-xanh-hat-250gr-pmt-9582-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(161,'Đậu Xanh Hạt 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n<b><br>ĐẬU XANH HẠT</b>\n<br>Đậu xanh hạt có tên khác là Mung bean là cây thân thảo nhỏ, mọc đứng, sống quanh năm. Trong đậu xanh còn chứa nhiều loại đường, chủ yếu là saccharose, trong đó hàm lượng glucose chiếm ưu thế hơn so với fructose. Ngoài ra, chất béo của hạt đậu xanh có giá trị sinh học tương đối cao vì trong thành phần của nó có 20 acid béo trong đó chứa nhiều acid béo chưa no không thay thế như acid linoleic và acid linolenic. Đậu xanh có nguồn vitamin khá đa dạng như A, B1, B2, C, niacin và muối khoáng.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 328 kcal\n<br>– Carbohydrate: 53,1g\n<br>– Chất xơ thực phẩm: 4,7g\n<br>– Chất béo: 2,4g\n<br>– Protein: 23,4g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Ngăn ngừa ung thư\n<br>– Cung cấp dưỡng chất cho cơ thể\n<br>– Hỗ trợ giảm cân hiệu quả\n<br>– Ổn định đường huyết.\n<br>– Thanh lọc cơ thể, chữa khàn tiếng.\n<br>– Tốt cho phụ nữ có thai.\n<br>– Hỗ trợ làm đẹp da.',36000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-xanh-hat-450gr-pmt-2299-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(162,'Đậu Xanh Không Vỏ 250G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng \n<b><br>ĐẬU XANH KHÔNG VỎ</b>\n<br>Đậu xanh không vỏ là loại đậu rất thông dụng tại Việt Nam, được trồng trong khắp cả nước từ Bắc vào Nam. Đậu xanh không vỏ thường xuất hiện trong các bữa ăn hằng ngày của nhiều gia đình. Đậu xanh không vỏ có nguồn vitamin khá đa dạng như A, B1, B2, C, niacin và muối khoáng, có tác dụng bổ nguyên khí, thanh nhiệt, mát gan, chữa lở loét, làm sáng mắt, hạ huyết áp, giảm cân rất hiệu quả.\n<b><br>Thông tin dinh dưỡng có trong 100gr <b>\n<br>– Calories: 328 kcal\n<br>– Carbohydrate: 53,1g\n<br>– Chất xơ thực phẩm: 4,7g\n<br>– Chất béo: 2,4g\n<br>– Protein: 23,4g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Ngăn ngừa ung thư\n<br>– Cung cấp dưỡng chất cho cơ thể\n<br>– Hỗ trợ giảm cân hiệu quả\n<br>– Ổn định đường huyết.\n<br>– Thanh lọc cơ thể, chữa khàn tiếng.\n<br>– Tốt cho phụ nữ có thai.\n<br>– Hỗ trợ làm đẹp da.',21500,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/dau-xanh-khong-vo-250gr-pmt-2501-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(163,'Đậu Xanh Không Vỏ 450G','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng <br>Thông tin sản phẩm đang cập nhật',38000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/dau-xanh-khong-vo-450gr-pmt-2635-scaled.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(164,'GẠO LỨC 1KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>GẠO LỨC</b>\n<br>Gạo lức là loại gạo được xay xát chỉ bỏ lớp vỏ trấu và giữ nguyên lớp vỏ cám (rất giàu sinh tố và nguyên tố vi lượng). Nếu giã sạch lớp cám này sẽ cho ra gạo trắng, loại chúng ta ăn hàng ngày. Lớp cám của hạt gạo lức chứa nhiều dưỡng chất quan trọng như: vitamin E, vitamin B1, B3, B6, ma-giê, man-gan, chất xơ, sắt…\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 216 kcal\n<br>– Carbohydrate: 44g\n<br>– Chất xơ: 3,5g\n<br>– Chất béo: 1,8g\n<br>– Protein: 5g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Giảm cholesterol xấu\n<br>– Tốt cho tim mạch\n<br>– Giảm nguy cơ tiểu đường\n<br>– Giúp hệ miễn dịch khoẻ\n<br>– Giúp xương khớp khoẻ mạnh',41000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/gao-luc-1kg-pmt-2962-1-1152x1536.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(165,'GẠO LỨC 2KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>GẠO LỨC</b>\n<br>Gạo lức là loại gạo được xay xát chỉ bỏ lớp vỏ trấu và giữ nguyên lớp vỏ cám (rất giàu sinh tố và nguyên tố vi lượng). Nếu giã sạch lớp cám này sẽ cho ra gạo trắng, loại chúng ta ăn hàng ngày. Lớp cám của hạt gạo lức chứa nhiều dưỡng chất quan trọng như: vitamin E, vitamin B1, B3, B6, ma-giê, man-gan, chất xơ, sắt…\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 216 kcal\n<br>– Carbohydrate: 44g\n<br>– Chất xơ: 3,5g\n<br>– Chất béo: 1,8g\n<br>– Protein: 5g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Giảm cholesterol xấu\n<br>– Tốt cho tim mạch\n<br>– Giảm nguy cơ tiểu đường\n<br>– Giúp hệ miễn dịch khoẻ\n<br>– Giúp xương khớp khoẻ mạnh',80000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/Gao-luc-2kg--1152x1536.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(166,'GẠO LỨC HUYẾT RỒNG 1KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>GẠO LỨC HUYẾT RỒNG</b>\n<br>Gạo lức huyết rồng là một giống lúa được trồng ở vùng nước ngập sâu có nguồn gốc từ vùng Đồng Tháp Mười và Tứ Giác Long Xuyên được trồng trên vùng đất ngập sâu 1 – 2m. Gạo lức huyết rồng được xay sơ qua, và vẫn giữ được lớp cám dày bên ngoài nên lớp vỏ màu nâu, Nó có sức sống khá mạnh mẽ và có thể thích nghi với mọi điều kiện để sinh trưởng và phát triển mạnh. Gạo lức huyết rồng có chứa rất nhiều các chất dinh dưỡng tốt cho cơ thể. Trong gạo lức có chứa các thành phần dinh dưỡng như là chất bột, chất béo, chất đạm và chất sơ, ngoài ra gạo lức huyết rồng còn chứa các vitamin như là B1, B2,B3.. canxi, sắt….và các nguyên tố vi lượng rất tốt cho sức khỏe như omega3, omega6, omega9…\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 216 kcal\n<br>– Carbohydrate: 44g\n<br>– Chất xơ: 3,5g\n<br>– Chất béo: 1,8g\n<br>– Protein: 5g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Ngăn ngừa các căn bệnh ung thư, các bệnh về xương\n<br>– Phòng chống và kháng chế với các loại bệnh như là hỗ trợ giảm nguy cơ suy tim, loãng xương, sỏi thận, giảm khả năng bị tiểu đường\n<br>– Phòng chống lão hóa da, giúp đẹp da và hỗ trợ giảm béo, cân bằng ngoại hình.\n<br>– Hỗ trợ giảm các bệnh về phong thấp và gút.\n<br>– Tăng khả năng miễn dịch cho cơ thể phòng chống các căn bệnh nhiễm khuẩn, chống virus và chống táo bón, giảm nguy cơ mắc bệnh về tim mạch ở bà bầu.\n<br>– Điều hòa hệ thống thần kinh khỏe mạnh dẫn truyền thần kinh linh hoạt, giảm tình trạng đau',41000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/gao-luc-huyet-rong-1kg-pmt-8279-1-1152x1536.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(167,'GẠO LỨC HUYẾT RỒNG 2KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>GẠO LỨC HUYẾT RỒNG</b>\n<br>Gạo lức huyết rồng là một giống lúa được trồng ở vùng nước ngập sâu có nguồn gốc từ vùng Đồng Tháp Mười và Tứ Giác Long Xuyên được trồng trên vùng đất ngập sâu 1 – 2m. Gạo lức huyết rồng được xay sơ qua, và vẫn giữ được lớp cám dày bên ngoài nên lớp vỏ màu nâu, Nó có sức sống khá mạnh mẽ và có thể thích nghi với mọi điều kiện để sinh trưởng và phát triển mạnh. Gạo lức huyết rồng có chứa rất nhiều các chất dinh dưỡng tốt cho cơ thể. Trong gạo lức có chứa các thành phần dinh dưỡng như là chất bột, chất béo, chất đạm và chất sơ, ngoài ra gạo lức huyết rồng còn chứa các vitamin như là B1, B2,B3.. canxi, sắt….và các nguyên tố vi lượng rất tốt cho sức khỏe như omega3, omega6, omega9…\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 216 kcal\n<br>– Carbohydrate: 44g\n<br>– Chất xơ: 3,5g\n<br>– Chất béo: 1,8g\n<br>– Protein: 5g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Ngăn ngừa các căn bệnh ung thư, các bệnh về xương\n<br>– Phòng chống và kháng chế với các loại bệnh như là hỗ trợ giảm nguy cơ suy tim, loãng xương, sỏi thận, giảm khả năng bị tiểu đường\n<br>– Phòng chống lão hóa da, giúp đẹp da và hỗ trợ giảm béo, cân bằng ngoại hình.\n<br>– Hỗ trợ giảm các bệnh về phong thấp và gút.\n<br>– Tăng khả năng miễn dịch cho cơ thể phòng chống các căn bệnh nhiễm khuẩn, chống virus và chống táo bón, giảm nguy cơ mắc bệnh về tim mạch ở bà bầu.\n<br>– Điều hòa hệ thống thần kinh khỏe mạnh dẫn truyền thần kinh linh hoạt, giảm tình trạng đau',99900,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/gao-luc-huyet-rong-2kg-pmt-4452-1230x1536.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(168,'GẠO LỨC TÍM THAN 1KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>GẠO LỨC TÍM THAN</b>\n<br>Gạo lức tím than được lai tạo từ một loại gạo nếp đen, trong quá trình lai tạo có kết hợp với những loại gạo đặc sản của Sóc Trăng nên có chất lượng rất tốt. Gạo lức tím than có lớp vỏ ngoài màu đen ánh tím, nên được gọi là gạo tím than (tên Hán-Việt là Huyền Mễ). Gạo tím than chứa rất nhiều thành phần chất dinh dưỡng tốt cho sức khỏe.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 216 kcal\n<br>– Carbohydrate: 44g\n<br>– Chất xơ: 3,5g\n<br>– Chất béo: 1,8g\n<br>– Protein: 5g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Tăng cường sức khỏe cho tim\n<br>– Tăng đề kháng, ngừa ung thư\n<br>– Giảm cân, giảm cholesterol và huyết áp\n<br>– Tăng trưởng tế bào và giữ cho xương chắc khỏe\n<br>– Giảm các trường hợp tiểu đường, béo phì',-1,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/nep-than-1200x800.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(169,'GẠO TẤM THƠM 1KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>GẠO TẤM THƠM</b>\n<br>Gạo tấm thơm là những hạt gạo bị vỡ trong lúc xay xát làm trắng gạo, gạo tấm tuy không đều hạt nhưng vẫn mang lại nguồn dinh dưỡng dồi dào bởi phôi vẫn còn được giữ nguyên. Ngoài Việt Nam, Thái Lan, Bangladesh và nhiều nơi khác tại Đông Nam Á cũng tiêu thụ gạo tấm với nhiều mục đích khác nhau như làm món ăn, chăn nuôi, chế biến thành bột dùng trong giặt giũ và nấu nướng hay công nghiệp da và mỹ phẩm. Hạt gạo tấm ngon khi có màu trắng đục, khi nấu xong cho cơm ráo, mềm, xốp, ngọt cơm và đặc biệt cơm vẫn ngon khi để nguội. Cơm tấm dù chỉ là một món bình dân nhưng lại chiều lòng và trở thành món ăn yêu thích của mọi tầng lớp trong xã hội.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 130 kcal\n<br>– Carbohydrate: 28g\n<br>– Chất xơ: 0,4g\n<br>– Chất béo: 0,3g\n<br>– Protein: 2,7g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Giúp cung cấp và bổ sung năng lượng nhanh cho cơ thể.\n<br>– Được dùng trong công nghiệp mỹ phẩm và da\n<br>– Sử dụng làm thức ăn cho gia súc, gia cầm, thủy sản',36000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/Tam-thom-1kg-PMT-1152x1536.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(170,'GẠO TẤM THƠM 2KG','Thương hiệu: Phú Minh Tâm | Tình trạng: Còn hàng\n<b><br>GẠO TẤM THƠM</b>\n<br>Gạo tấm thơm là những hạt gạo bị vỡ trong lúc xay xát làm trắng gạo, gạo tấm tuy không đều hạt nhưng vẫn mang lại nguồn dinh dưỡng dồi dào bởi phôi vẫn còn được giữ nguyên. Ngoài Việt Nam, Thái Lan, Bangladesh và nhiều nơi khác tại Đông Nam Á cũng tiêu thụ gạo tấm với nhiều mục đích khác nhau như làm món ăn, chăn nuôi, chế biến thành bột dùng trong giặt giũ và nấu nướng hay công nghiệp da và mỹ phẩm. Hạt gạo tấm ngon khi có màu trắng đục, khi nấu xong cho cơm ráo, mềm, xốp, ngọt cơm và đặc biệt cơm vẫn ngon khi để nguội. Cơm tấm dù chỉ là một món bình dân nhưng lại chiều lòng và trở thành món ăn yêu thích của mọi tầng lớp trong xã hội.\n<b><br>Thông tin dinh dưỡng có trong 100gr </b>\n<br>– Calories: 130 kcal\n<br>– Carbohydrate: 28g\n<br>– Chất xơ: 0,4g\n<br>– Chất béo: 0,3g\n<br>– Protein: 2,7g\n<b><br>Công dụng sản phẩm: </b>\n<br>– Giúp cung cấp và bổ sung năng lượng nhanh cho cơ thể.\n<br>– Được dùng trong công nghiệp mỹ phẩm và da\n<br>– Sử dụng làm thức ăn cho gia súc, gia cầm, thủy sản',62000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/Tam-thom-2kg-PMT-1152x1536.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(171,'Mè 3 loại','<b>MÈ ĐEN:</b> là nguồn thực phẩm tuyệt vời chứa nhiều chất dinh dưỡng  như đồng, sắt, canxi và chứa nhiều chất xơ. Trong mè đen có chứa 2 hợp chất Sesamin và Sesamolin rất có lợi cho sức khỏe của chúng ta. Các mẹ bầu hoặc mẹ đang cho con bú đều có thể ăn mè đen để để có thể gián tiếp bổ sung nguồn dưỡng chất cho bé từ sữa mẹ.\n<br><b>MÈ TRẮNG KHÔNG VỎ:</b> được làm hoàn toàn từ hạt mè đã qua quá trình kiểm định chặt chẽ. Mè chứa nhiều dưỡng chất có lợi cho cơ thể và được sử dụng rộng rãi.\n<br>Mè không vỏ được đóng gói tiện lợi, có thể dùng chế biến các món chè, xôi, làm bánh… mang đến mùi vị rất thơm ngon. Sản phẩm được sản xuất trên dây chuyền khép kín, đáp ứng tiêu chuẩn chất lượng cao. Sản phẩm không chứa hóa chất hay chất bảo quản nên bạn có thể yên tâm lựa chọn tiêu dùng.\n<br><b>MÈ TRẮNG:</b> có chứa thành phần chất béo và chất đạm cao. Bên cạnh đó trong dầu mè trắng rất giàu Omega-3. Nhờ vậy, mè trắng có tác dụng giảm cholesterol, hạ huyết áp và một phần giúp cải thiện khả năng nhận thức.\n<br>Hạt mè trắng có chứa hợp chất Sesamin và Sesamolin, giúp bảo vệ gan và hạ huyết áp. Trong mè trắng có chứa các chất xơ vì vậy giúp ngăn ngừa táo bón rất hiệu quả.  Hạt mè trắng có chứa nhiều vitamin E, B1, sắt, magie, và nhiều khoáng chất khác.\n<br><b>Xuất xứ:</b> Việt Nam',-1,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/ME-3-LOAI-533x800.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(172,'Mè đen 100G','<b>MÈ ĐEN</b>\n<br>Mè đen là nguồn thực phẩm tuyệt vời chứa nhiều chất dinh dưỡng như đồng, sắt, canxi và chứa nhiều chất xơ. Trong mè đen có chứa 2 hợp chất Sesamin và Sesamolin rất có lợi cho sức khỏe của chúng ta. Các mẹ bầu hoặc mẹ đang cho con bú đều có thể ăn mè đen để để có thể gián tiếp bổ sung nguồn dưỡng chất cho bé từ sữa mẹ. Hạt mè đen có tính ngọt, giúp sáng mắt, bổ sung trí não, có thể chữa lành vết bỏng, hoặc các vết sưng tấy. Vì vậy hiện nay có nhiều người chọn mua mè đen rất nhiều.\n<br><b>Thông tin dinh dưỡng có trong 100gr</b> \n<br>– Calories: 572 kcal\n<br>– Carbohydrate: 23g\n<br>– Chất xơ thực phẩm: 2g\n<br>– Chất béo: 9g\n<br>– Protein: 3,2g\n<br><b>Công dụng sản phẩm:</b>\n<br>– Giúp giảm bớt các triệu chứng do ⦁ hội chứng ruột kích thích, bệnh trĩ, ⦁ viêm ruột thừa và các rối loạn tiêu hóa khác gây ra.\n<br>– Ngăn ngừa táo bón\n<br>– Giảm nguy cơ ung thư ruột kế',18500,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/ME-DEN-1-533x800.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(173,'Mè đen 200G','<b>MÈ ĐEN</b>\n<br>Mè đen là nguồn thực phẩm tuyệt vời chứa nhiều chất dinh dưỡng như đồng, sắt, canxi và chứa nhiều chất xơ. Trong mè đen có chứa 2 hợp chất Sesamin và Sesamolin rất có lợi cho sức khỏe của chúng ta. Các mẹ bầu hoặc mẹ đang cho con bú đều có thể ăn mè đen để để có thể gián tiếp bổ sung nguồn dưỡng chất cho bé từ sữa mẹ. Hạt mè đen có tính ngọt, giúp sáng mắt, bổ sung trí não, có thể chữa lành vết bỏng, hoặc các vết sưng tấy. Vì vậy hiện nay có nhiều người chọn mua mè đen rất nhiều.\n<br><b>Thông tin dinh dưỡng có trong 100gr</b> \n<br>– Calories: 572 kcal\n<br>– Carbohydrate: 23g\n<br>– Chất xơ thực phẩm: 2g\n<br>– Chất béo: 9g\n<br>– Protein: 3,2g\n<br><b>Công dụng sản phẩm:</b>\n<br>– Giúp giảm bớt các triệu chứng do ⦁ hội chứng ruột kích thích, bệnh trĩ, ⦁ viêm ruột thừa và các rối loạn tiêu hóa khác gây ra.\n<br>– Ngăn ngừa táo bón\n<br>– Giảm nguy cơ ung thư ruột kế',33000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/me-den-200gr-pmt-8300-1-646x800.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(174,'Mè trắng 100G','<b>MÈ TRẮNG</b>\n<br>Mè trắng Phú Minh Tâm được sản xuất theo công nghệ hiện đại, mọi khâu từ tuyển chọn nguyên liệu tới chế biến, đóng gói đều diễn ra khép kín dưới sự giám sát và kiểm tra nghiêm ngặt. Sản phẩm không chứa hóa chất, chất bảo quản độc hại, đảm bảo an toàn cho sức khỏe người tiêu dùng. Bạn có thể làm nguyên liệu chế biến các món ăn ngon cho gia đình như cho vào chè, xôi hay làm bánh, kẹo… đều rất thơm ngon, bổ dưỡng.\n<br><b>Thông tin dinh dưỡng có trong 100gr</b> \n<br>– Calories: 568 kcal\n<br>– Carbohydrate: 17.6g\n<br>– Chất xơ thực phẩm: 3.5g\n<br>– Chất béo: 46.4g\n<br>– Protein: 3,2g\n<br><b>Công dụng sản phẩm:</b>\n<br>– Giảm cholesterol và chất béo trung tính\n<br>– Cung cấp protein dồi dào\n<br>– Hỗ trợ hệ xương phát triển mạnh mẽ\n<br>– Hỗ trợ giảm huyết áp',18500,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/ME-TRANG-533x800.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(175,'Mè trắng 200G','<b>MÈ TRẮNG</b>\n<br>Mè trắng Phú Minh Tâm được sản xuất theo công nghệ hiện đại, mọi khâu từ tuyển chọn nguyên liệu tới chế biến, đóng gói đều diễn ra khép kín dưới sự giám sát và kiểm tra nghiêm ngặt. Sản phẩm không chứa hóa chất, chất bảo quản độc hại, đảm bảo an toàn cho sức khỏe người tiêu dùng. Bạn có thể làm nguyên liệu chế biến các món ăn ngon cho gia đình như cho vào chè, xôi hay làm bánh, kẹo… đều rất thơm ngon, bổ dưỡng.\n<br><b>Thông tin dinh dưỡng có trong 100gr</b> \n<br>– Calories: 568 kcal\n<br>– Carbohydrate: 17.6g\n<br>– Chất xơ thực phẩm: 3.5g\n<br>– Chất béo: 46.4g\n<br>– Protein: 3,2g\n<br><b>Công dụng sản phẩm:</b>\n<br>– Giảm cholesterol và chất béo trung tính\n<br>– Cung cấp protein dồi dào\n<br>– Hỗ trợ hệ xương phát triển mạnh mẽ\n<br>– Hỗ trợ giảm huyết áp',33000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/ltd_1940-3691-533x800.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(176,'MÈ TRẮNG KHÔNG VỎ 100G','<b>MÈ TRẮNG KHÔNG VỎ</b>\n<br>Mè trắng không vỏ được làm hoàn toàn từ hạt mè đã qua quá trình kiểm định chặt chẽ. Mè chứa nhiều dưỡng chất có lợi cho cơ thể và được sử dụng rộng rãi. Mè không vỏ được đóng gói tiện lợi, có thể dùng chế biến các món chè, xôi, làm bánh… mang đến mùi vị rất thơm ngon. Sản phẩm được sản xuất trên dây chuyền khép kín, đáp ứng tiêu chuẩn chất lượng cao. Sản phẩm Phú Minh Tâm không chứa hóa chất hay chất bảo quản nên bạn có thể yên tâm lựa chọn tiêu dùng.\n<br><b>Thông tin dinh dưỡng có trong 100gr</b> \n<br>– Calories: 572 kcal\n<br>– Carbohydrate: 23g\n<br>– Chất xơ thực phẩm: 2g\n<br>– Chất béo: 9g\n<br>– Protein: 3,2g\n<br><b>Công dụng sản phẩm:</b>\n<br>– Giảm cholesterol và chất béo trung tính\n<br>– Cung cấp protein dồi dào\n<br>– Hỗ trợ hệ xương phát triển mạnh mẽ\n<br>– Hỗ trợ giảm huyết áp',20000,'https://phuminhtam.com.vn/wp-content/uploads/2024/05/ME-TRANG-KO-VO3-600x400.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0),(177,'MÈ TRẮNG KHÔNG VỎ 200G','<b>MÈ TRẮNG KHÔNG VỎ</b>\n<br>Mè trắng không vỏ được làm hoàn toàn từ hạt mè đã qua quá trình kiểm định chặt chẽ. Mè chứa nhiều dưỡng chất có lợi cho cơ thể và được sử dụng rộng rãi. Mè không vỏ được đóng gói tiện lợi, có thể dùng chế biến các món chè, xôi, làm bánh… mang đến mùi vị rất thơm ngon. Sản phẩm được sản xuất trên dây chuyền khép kín, đáp ứng tiêu chuẩn chất lượng cao. Sản phẩm Phú Minh Tâm không chứa hóa chất hay chất bảo quản nên bạn có thể yên tâm lựa chọn tiêu dùng.\n<br><b>Thông tin dinh dưỡng có trong 100gr</b> \n<br>– Calories: 572 kcal\n<br>– Carbohydrate: 23g\n<br>– Chất xơ thực phẩm: 2g\n<br>– Chất béo: 9g\n<br>– Protein: 3,2g\n<br><b>Công dụng sản phẩm:</b>\n<br>– Giảm cholesterol và chất béo trung tính\n<br>– Cung cấp protein dồi dào\n<br>– Hỗ trợ hệ xương phát triển mạnh mẽ\n<br>– Hỗ trợ giảm huyết áp',34000,'https://phuminhtam.com.vn/wp-content/uploads/2024/06/me-trang-khong-vo-200gr-pmt-7005-683x800.jpg',1,'2024-09-20 03:35:38','2024-09-20 03:35:38',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `categories`
--
 
CREATE TABLE `categories` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `icon` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('bap','Bắp','là một loại thực phẩm phổ biến, còn gọi là ngô ở nhiều nơi. Đây là một cây trồng có hạt, thuộc họ lúa (Poaceae), được trồng rộng rãi trên khắp thế giới.','   https://cdn-icons-png.flaticon.com/512/16450/16450360.png ','2024-09-20 03:35:20','2024-09-20 03:35:20'),('dau','Đậu','Ở Việt Nam hạt đậu đen được xem là loại thực phẩm bổ dưỡng cao cấp. Món ăn có đậu đen vừa có giá trị bổ dưỡng vừa là bài thuốc thanh lọc và làm mát cơ thể','   https://cdn-icons-png.flaticon.com/512/2149/2149876.png ','2024-09-20 03:35:20','2024-09-20 03:35:20'),('gaoluc','Gạo Lức','Gạo lức là loại gạo được xay xát chỉ bỏ lớp vỏ trấu và giữ nguyên lớp vỏ cám (rất giàu sinh tố và nguyên tố vi lượng). Nếu giã sạch lớp cám này sẽ cho ra gạo trắng, loại chúng ta ăn hàng ngày. Lớp cám của hạt gạo lức chứa nhiều dưỡng chất quan trọng như: vitamin E, vitamin B1, B3, B6, ma-giê, man-gan, chất xơ, sắt…','   https://cdn-icons-png.flaticon.com/512/1728/1728730.png ','2024-09-20 03:35:20','2024-09-20 03:35:20'),('me','Mè','Được làm 100% mè tự nhiên thực phẩm bổ dưỡng, có lợi cho sức khỏe','   https://cdn-icons-png.flaticon.com/512/7408/7408320.png ','2024-09-20 03:35:20','2024-09-20 03:35:20'),('nep','Nếp','Nếp là một loại gạo đặc trưng, thuộc họ lúa, được trồng phổ biến ở nhiều quốc gia châu Á, đặc biệt là Việt Nam. Gạo nếp có đặc tính dẻo, mềm khi nấu chín, và có hương vị đặc trưng','https://cdn-icons-png.flaticon.com/512/14323/14323637.png','2024-09-20 03:35:20','2024-09-20 03:35:20');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variants`
--
 
CREATE TABLE `variants` (
  `id` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` enum('multiple','single') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `variants`
--

LOCK TABLES `variants` WRITE;
/*!40000 ALTER TABLE `variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variantoptions`
--

CREATE TABLE `variantoptions` (
  `id` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `priceChange` json DEFAULT NULL,
  `variant_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `variant_id` (`variant_id`),
  CONSTRAINT `VariantOptions_ibfk_1` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `variantoptions`
--

LOCK TABLES `variantoptions` WRITE;
/*!40000 ALTER TABLE `variantoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `variantoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `ProductCategories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ProductCategories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `productcategories`
--

LOCK TABLES `productcategories` WRITE;
/*!40000 ALTER TABLE `productcategories` DISABLE KEYS */;
INSERT INTO `productcategories` VALUES (216,130,'nep','2024-09-20 03:35:38','2024-09-20 03:35:38'),(217,131,'nep','2024-09-20 03:35:38','2024-09-20 03:35:38'),(218,132,'nep','2024-09-20 03:35:38','2024-09-20 03:35:38'),(219,133,'nep','2024-09-20 03:35:38','2024-09-20 03:35:38'),(220,134,'nep','2024-09-20 03:35:38','2024-09-20 03:35:38'),(221,135,'nep','2024-09-20 03:35:38','2024-09-20 03:35:38'),(222,136,'nep','2024-09-20 03:35:38','2024-09-20 03:35:38'),(223,137,'nep','2024-09-20 03:35:38','2024-09-20 03:35:38'),(224,138,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(225,139,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(226,140,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(227,141,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(228,142,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(229,143,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(230,144,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(231,145,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(232,146,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(233,147,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(234,148,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(235,149,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(236,150,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(237,151,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(238,152,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(239,153,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(240,154,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(241,155,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(242,156,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(243,157,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(244,158,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(245,159,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(246,160,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(247,161,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(248,162,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(249,163,'dau','2024-09-20 03:35:38','2024-09-20 03:35:38'),(250,164,'gaoluc','2024-09-20 03:35:38','2024-09-20 03:35:38'),(251,165,'gaoluc','2024-09-20 03:35:38','2024-09-20 03:35:38'),(252,166,'gaoluc','2024-09-20 03:35:38','2024-09-20 03:35:38'),(253,167,'gaoluc','2024-09-20 03:35:38','2024-09-20 03:35:38'),(254,168,'gaoluc','2024-09-20 03:35:38','2024-09-20 03:35:38'),(255,169,'gaoluc','2024-09-20 03:35:38','2024-09-20 03:35:38'),(256,170,'gaoluc','2024-09-20 03:35:38','2024-09-20 03:35:38'),(257,171,'me','2024-09-20 03:35:38','2024-09-20 03:35:38'),(258,172,'me','2024-09-20 03:35:38','2024-09-20 03:35:38'),(259,173,'me','2024-09-20 03:35:38','2024-09-20 03:35:38'),(260,174,'me','2024-09-20 03:35:38','2024-09-20 03:35:38'),(261,175,'me','2024-09-20 03:35:38','2024-09-20 03:35:38'),(262,176,'me','2024-09-20 03:35:38','2024-09-20 03:35:38'),(263,177,'me','2024-09-20 03:35:38','2024-09-20 03:35:38'),(264,129,'dau','2024-11-04 06:53:22','2024-11-04 06:53:22');
/*!40000 ALTER TABLE `productcategories` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `productvariants`
--

CREATE TABLE `productvariants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `variant_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `variant_id` (`variant_id`),
  CONSTRAINT `ProductVariants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ProductVariants_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `productvariants`
--

LOCK TABLES `productvariants` WRITE;
/*!40000 ALTER TABLE `productvariants` DISABLE KEYS */;
/*!40000 ALTER TABLE `productvariants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--
 
CREATE TABLE `discounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `type` enum('percent','value') NOT NULL,
  `value` double NOT NULL,
  `description` text,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discountconditions`
--

DROP TABLE IF EXISTS `discountconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discountconditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `discount_id` int NOT NULL,
  `conditionType` varchar(255) NOT NULL,
  `value` double NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  CONSTRAINT `DiscountConditions_ibfk_1` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `discountconditions`
--

LOCK TABLES `discountconditions` WRITE;
/*!40000 ALTER TABLE `discountconditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `discountconditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_type` enum('Thái Độ','Sản Phẩm','Giá Cả','Khác') NOT NULL,
  `rating` enum('Quá tệ','Chưa tốt','Bình thường','Ổn','Quá tuyệt vời') NOT NULL,
  `comment` text NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'Thái Độ','Quá tuyệt vời','hấp dẫn kkk','608012972346918065','2024-09-20 04:27:17','2024-09-20 04:27:17'),(2,'Thái Độ','Quá tuyệt vời','hấp dẫn kkk','608012972346918065','2024-09-20 04:27:18','2024-09-20 04:27:18');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `shipping_address` text,
  `shipping_fee` double NOT NULL,
  `total_amount` double DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `note` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('566576860165010023168774549_1730709348818','4984166942559390206','Fd, Quảng Long, Hải Hà, Quảng Ninh',0,281000,'2024-11-04 08:35:56','','2024-11-04 08:35:56','2024-11-04 08:35:56'),('566576860165010023168774549_1730709712998','4984166942559390206','Fd, Quảng Long, Hải Hà, Quảng Ninh',0,97000,'2024-11-04 08:42:01','','2024-11-04 08:42:01','2024-11-04 08:42:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderproducts`
--

CREATE TABLE `orderproducts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `options` json DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `OrderProducts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `OrderProducts_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `orderproducts`
--

LOCK TABLES `orderproducts` WRITE;
/*!40000 ALTER TABLE `orderproducts` DISABLE KEYS */;
INSERT INTO `orderproducts` VALUES (75,130,'566576860165010023168774549_1730709348818',1,99000,'{}','2024-11-04 08:35:56','2024-11-04 08:35:56'),(76,131,'566576860165010023168774549_1730709348818',1,85000,'{}','2024-11-04 08:35:56','2024-11-04 08:35:56'),(77,132,'566576860165010023168774549_1730709348818',1,47000,'{}','2024-11-04 08:35:56','2024-11-04 08:35:56'),(78,133,'566576860165010023168774549_1730709348818',1,50000,'{}','2024-11-04 08:35:56','2024-11-04 08:35:56'),(79,132,'566576860165010023168774549_1730709712998',1,47000,'{}','2024-11-04 08:42:01','2024-11-04 08:42:01'),(80,133,'566576860165010023168774549_1730709712998',1,50000,'{}','2024-11-04 08:42:01','2024-11-04 08:42:01');
/*!40000 ALTER TABLE `orderproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdiscounts`
--

CREATE TABLE `orderdiscounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `discount_id` int NOT NULL,
  `applied_at` datetime NOT NULL,
  `discount_amount` double NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `discount_id` (`discount_id`),
  CONSTRAINT `OrderDiscounts_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `OrderDiscounts_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `orderdiscounts`
--

LOCK TABLES `orderdiscounts` WRITE;
/*!40000 ALTER TABLE `orderdiscounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdiscounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `Payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 ;


--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (49,'566576860165010023168774549_1730709348818','COD_SANDBOX','SUCCESS',281000,NULL,'2024-11-04 08:40:14','2024-11-04 08:40:14'),(50,'566576860165010023168774549_1730709712998','COD_SANDBOX','SUCCESS',97000,NULL,'2024-11-04 08:42:57','2024-11-04 08:42:57');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20240816100000-create-categories.js'),('20240816100100-create-products.js'),('20240816100200-create-variants.js'),('20240816100250-create-product-variant.js'),('20240816100280-create-variant-option.js'),('20240816100300-create-customers.js'),('20240816100400-create-orders.js'),('20240816100500-create-order-products.js'),('20240816100600-create-product-categories.js'),('20240816100700-create-payment.js'),('20240816100800-create-discounts.js'),('20240816100850-create-discount-conditions.js'),('20240816100900-create-order-discount.js'),('20240816101000-create-admins.js'),('20240816101100-create-customer_admins.js'),('20240917075254-create-feedbacks-table.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;




/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-04 16:00:37
