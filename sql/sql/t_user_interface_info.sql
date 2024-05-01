create table t_user_interface_info
(
    id           bigint auto_increment
        primary key,
    user_id      bigint        not null comment '用户id或管理员id',
    interface_id bigint        not null comment '1 表示AI聊天接口 2表示智能分析接口 ',
    total_num    int default 0 not null comment '总共调用接口次数
',
    left_num     int default 0 not null comment '剩余接口可用次数',
    create_time  datetime      not null comment '创建时间',
    update_time  datetime      not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8_general_ci
    row_format = DYNAMIC;

