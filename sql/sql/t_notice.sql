create table t_notice
(
    notice_id       int auto_increment comment '公告表唯一标识'
        primary key,
    notice_title    varchar(32)  not null comment '公告题目',
    notice_content  varchar(255) not null comment '公告内容',
    notice_admin_id int          not null comment '发布公告的管理员id',
    create_time     datetime     not null comment '创建时间',
    update_time     datetime     not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

