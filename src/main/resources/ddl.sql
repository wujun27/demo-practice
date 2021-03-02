CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_key` varchar(48) NOT NULL  DEFAULT '' COMMENT '角色code',
  `role_name` varchar(255) NOT NULL DEFAULT '' COMMENT '角色名',
  `role_desc` varchar(512) COMMENT '角色描述',
  `is_delete` bigint(20) NOT NULL DEFAULT 0 COMMENT '逻辑删除字段,0:未删除, 如果逻辑删除，is_deleted 为id值',
  `gmt_create` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL DEFAULT 0 COMMENT '最近修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_role_key` (`role_key`),
  KEY `idx_role_name` (`role_name`),
  KEY `index_role_desc` (`role_desc`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色表';

CREATE TABLE `t_user_role_rel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `role_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '角色id',
  `gmt_create` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL DEFAULT '0' COMMENT '最近修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_role` (`user_id`, `role_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_role_id` (`role_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关联表';