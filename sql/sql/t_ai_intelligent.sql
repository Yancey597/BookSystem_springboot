create table t_ai_intelligent
(
    id            bigint auto_increment
        primary key,
    input_message text     not null comment '用户输入信息',
    ai_result     text     null comment 'AI生成结果',
    user_id       bigint   null,
    create_time   datetime null,
    update_time   datetime null on update CURRENT_TIMESTAMP
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

