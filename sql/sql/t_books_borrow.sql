create table t_books_borrow
(
    borrow_id   int auto_increment comment '借阅表唯一标识'
        primary key,
    card_number bigint   not null comment '借阅证编号 固定11位随机生成 用户和图书关联的唯一标识',
    book_number bigint   not null comment '图书编号 图书唯一标识',
    borrow_date datetime not null comment '借阅日期',
    close_date  datetime not null comment '截止日期',
    return_date datetime null comment '归还日期',
    create_time datetime not null comment '创建时间',
    update_time datetime not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

