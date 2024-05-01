create table t_book_rule
(
    rule_id            int auto_increment comment '借阅规则记录的唯一标识'
        primary key,
    book_rule_id       int          not null comment '借阅规则编号',
    book_days          int          not null comment '借阅天数',
    book_limit_number  int          not null comment '限制借阅的本数',
    book_limit_library varchar(255) not null comment '限制的图书馆',
    book_overdue_fee   double       not null comment '图书借阅后每天逾期费用',
    create_time        datetime     not null comment '创建时间',
    update_time        datetime     not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

