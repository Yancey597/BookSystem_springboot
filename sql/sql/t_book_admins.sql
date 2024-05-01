create table t_book_admins
(
    book_admin_id   bigint auto_increment comment '图书管理员表的唯一标识'
        primary key,
    username        varchar(32)  not null comment '用户名',
    password        varchar(32)  not null comment '密码md5加密',
    book_admin_name varchar(10)  not null comment '图书管理员真实姓名',
    status          int          not null comment '1表示可用 0表示禁用',
    email           varchar(255) not null comment '电子邮箱',
    create_time     datetime     not null comment '创建时间',
    update_time     datetime     not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

