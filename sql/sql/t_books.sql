create table t_books
(
    book_id          int auto_increment comment '图书表唯一标识'
        primary key,
    book_number      bigint       not null comment '图书编号 图书的唯一标识',
    book_name        varchar(32)  not null comment '图书名称',
    book_author      varchar(32)  not null comment '图书作者',
    book_library     varchar(32)  not null comment '图书所在图书馆名称',
    book_type        varchar(32)  not null comment '图书类别',
    book_location    varchar(32)  not null comment '图书位置',
    book_status      varchar(32)  not null comment '图书状态',
    book_description varchar(255) not null comment '图书描述',
    create_time      datetime     not null comment '创建时间',
    update_time      datetime     not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

