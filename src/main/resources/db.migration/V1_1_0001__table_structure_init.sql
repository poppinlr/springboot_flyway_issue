DROP TABLE IF EXISTS `duty_data`;

CREATE TABLE `duty_data` (
  `duty_data_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `duty_code` varchar(255) NOT NULL COMMENT '责任代码',
  `duty_name` varchar(255) NOT NULL COMMENT '责任名称',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`duty_data_id`),
  UNIQUE KEY `duty_data_uk_1` (`duty_code`),
  KEY `duty_data_index_1` (`duty_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;