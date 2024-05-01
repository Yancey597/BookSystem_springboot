create table t_chat
(
    id            bigint auto_increment comment '聊天记录id
'
        primary key,
    from_id       bigint       not null comment '发送消息者id
',
    to_id         bigint       null comment '接受消息者id,可以为空',
    text          varchar(512) null comment '消息内容',
    chat_type     tinyint      not null comment '聊天类型 1-私聊 2-群聊',
    create_time   datetime     not null comment '创建时间',
    update_time   datetime     not null on update CURRENT_TIMESTAMP comment '更新时间',
    message_type  int          not null comment '消息类型 1 文本 2 撤回消息 3 图片 4 语音 5 视频',
    role          int          not null comment '消息发送者身份 1 用户 2 图书管理员',
    reply_message varchar(512) not null comment '回复的消息内容'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

