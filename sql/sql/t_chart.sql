create table t_chart
(
    id           bigint auto_increment comment 'id'
        primary key,
    name         varchar(128)                           null comment '图标名称',
    goal         text                                   null comment '分析目标',
    chart_data   text                                   null comment '图标数据',
    chart_type   varchar(128)                           null comment '图标类型',
    gen_chart    text                                   null comment '生成的图标数据',
    gen_result   text                                   null comment '生成的分析结论',
    status       varchar(128) default 'wait'            not null comment 'wait,running,succeed,failed',
    exec_message text                                   null comment '执行信息',
    admin_id     bigint                                 null comment '创建管理员 id',
    create_time  datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time  datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除'
)
    comment '图表信息表' collate = utf8mb4_unicode_ci
                         row_format = DYNAMIC;

