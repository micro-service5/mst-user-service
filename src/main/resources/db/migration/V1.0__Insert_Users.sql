INSERT INTO `t_role` (`symbol`, `name`) VALUES ('SYSTEM_ADMIN', '系统管理员');

INSERT INTO `t_user` (`id`,  `name`, `password`, role) VALUES
  ('40b2dd57ca074dc0bd757c3e36fb2ffd', 'admin',
   '$2a$10$waEY3d0kvevCls6PiruDJuEF3MUesJh5RBqwVHxsM9VDBvQ2ghvpy', 'SYSTEM_ADMIN');


INSERT INTO `t_privilege` (`symbol`, `name`) VALUES ('CREATE_USER', '创建用户');
INSERT INTO `t_privilege` (`symbol`, `name`) VALUES ('UPDATE_USER', '更新用户');
INSERT INTO `t_privilege` (`symbol`, `name`) VALUES ('RETRIVE_USER', '检索用户');
INSERT INTO `t_privilege` (`symbol`, `name`) VALUES ('DELETE_USER', '删除用户');


INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('SYSTEM_ADMIN', 'CREATE_USER');
INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('SYSTEM_ADMIN', 'UPDATE_USER');
INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('SYSTEM_ADMIN', 'RETRIVE_USER');
INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('SYSTEM_ADMIN', 'DELETE_USER');