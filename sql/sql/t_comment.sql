create table t_comment
(
    comment_id            int auto_increment comment '留言表唯一标识'
        primary key,
    comment_avatar        varchar(255) not null comment '留言的头像 链接',
    comment_barrage_style varchar(32)  not null comment '弹幕的高度(样式)',
    comment_message       varchar(255) not null comment '弹幕的内容',
    comment_time          int          not null comment '留言的时间(控制速度)',
    create_time           datetime     not null comment '创建时间',
    update_time           datetime     not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = COMPACT;

