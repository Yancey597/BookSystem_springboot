create table t_users
(
    user_id     bigint auto_increment comment '用户表的唯一标识'
        primary key,
    username    varchar(32) not null comment '用户名',
    password    varchar(32) not null comment '密码 MD5加密',
    card_name   varchar(10) not null comment '真实姓名',
    card_number bigint      not null comment '借阅证编号 固定11位随机生成 非空',
    rule_number int         not null comment '规则编号 可以自定义也就是权限功能',
    status      int         not null comment '1表示可用 0表示禁用',
    create_time datetime    not null comment '创建时间',
    update_time datetime    not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

