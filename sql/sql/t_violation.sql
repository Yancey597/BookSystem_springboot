create table t_violation
(
    violation_id       int auto_increment comment '违章表唯一标识'
        primary key,
    card_number        bigint       not null comment '借阅证编号 11位 随机生成',
    book_number        bigint       not null comment '图书编号 图书唯一标识',
    borrow_date        datetime     not null comment '借阅日期',
    close_date         datetime     not null comment '截止日期',
    return_date        datetime     null comment '归还日期',
    violation_message  varchar(100) null comment '违章信息',
    violation_admin_id int          not null comment '违章信息管理员的id',
    create_time        datetime     not null comment '创建时间',
    update_time        datetime     not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

