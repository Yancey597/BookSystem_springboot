create table t_book_type
(
    type_id      int auto_increment comment '图书类别唯一标识'
        primary key,
    type_name    varchar(32)  not null comment '借阅类别的昵称',
    type_content varchar(255) not null comment '借阅类别的描述',
    create_time  datetime     not null comment '创建时间',
    update_time  datetime     not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

