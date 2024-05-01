create table t_admins
(
    admin_id    bigint auto_increment comment '管理员表的唯一标识'
        primary key,
    username    varchar(32) not null comment '用户名',
    password    varchar(32) not null comment '密码(MD5加密)',
    admin_name  varchar(10) not null comment '管理员真实姓名',
    status      int         not null comment '1表示可用 0表示禁用',
    create_time datetime    not null comment '创建时间',
    update_time datetime    not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

