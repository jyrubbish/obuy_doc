--会员 
create table member(
	id bigint not null comment '逻辑主键',
	open_id varchar(128) not null comment 'open_id',
	m_name varchar(64) not null comment '会员名称',
	nick_name varchar(64) not null comment '会员昵称',
	m_age int not null comment '年龄',
	m_gender int not null comment '性别',
	m_addr varchar(64) not null comment '地址',
	m_province varchar(32) not null comment '省份',
	m_city varchar(32) not null comment '市',
	m_area varchar(32) not null comment '区',
	m_img varchar(128) not null comment '头像',
	l_name varchar(64) not null comment '登录名',
	l_pwd varchar(64) not null comment '密码',
	m_phone bigint not null comment '手机号码',
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
--商品分类 
create table categray(
	id bigint not null comment '逻辑主键',
	cat_name varchar(64) not null comment '分类名称',
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
--商品
create table product(
	id bigint not null comment '逻辑主键',
	pro_name varchar(64) not null comment '商品名称',
	pro_price double not null comment '商品价格',
	pro_store int not null comment '库存',
	pro_rate float not null comment '利润比例',
	pro_intro varchar(128) not null comment '简介',
	pro_info varchar(256) not null comment '重要说明',
	pro_status int not null comment '状态',
	online_time timestamp not null comment '上架时间', 
	offline_time timestamp not null comment '下架时间',
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
--商品展示图
create table pro_show_img(
	id bigint not null comment '逻辑主键',
	pro_id bigint not null comment '商品主键',
	img_url varchar(128) not null comment '图片地址',	
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
	
--商品详情图
create table pro_detail_img(
	id bigint not null comment '逻辑主键',
	pro_id bigint not null comment '商品名称',
	img_url varchar(128) not null comment '图片地址',
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;

--排期
create table pro_schedule(
	id bigint not null comment '逻辑主键',
	sche_no bigint not null comment '排期号',
	pro_id bigint not null comment '商品id',
	buied_cnt bigint not null comment '购买数量',
	all_cnt bigint not null comment '总数',
	start_time timestamp not null comment '开始时间',
	end_time timestamp not null comment '结束时间',
	sche_stauts int not null comment '排期状态',		
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
--购买
create table order(
	id bigint not null comment '逻辑主键',
	o_no bigint not null comment '订单号',
	m_id bigint not null comment '会员id',
	sche_id bigint not null comment '排期号',
	o_cnt int not null comment '购买份数',
	o_amount float not null comment '购买金额',
	pay_time timestamp not null comment '支付时间',
	award_status int not null comment '中奖状态',	
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
--中奖
create table award(
	id bigint not null comment '逻辑主键',
	o_id bigint not null comment '订单号',
	m_id bigint not null comment '会员id',
	sche_id bigint not null comment '排期号',
	pro_id bigint not null comment '商品id',
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
--支付
create table payment(
	id bigint not null comment '逻辑主键',
	m_id bigint not null comment '会员id',
	o_id bigint not null comment '订单号',
	pay_time timestamp not null comment '支付时间',
	p_type int not null comment '支付方式',
	p_stauts int not null comment '支付状态',		
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
--退款
--消息
create table message(
	id bigint not null comment '逻辑主键',
	from varchar(128) not null comment '消息源',
	to varchar(128) not null comment '消息主',
	msg_type int not null comment '消息类型',
	msg_content varchar(128) not null comment '消息内容',
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
	) ENGINE=INNODB, default charset=utf8;
	
--快递单
create table express(
	id bigint not null comment '逻辑主键',
	exp_status int not null comment '快递状态',
	exp_time timestamp not null comment '快递发送时间',
	exp_person varchar(64) not null comment '快递员',
	award_id bigint not null comment '中奖id',
	is_del int not null not null comment '是否删除 1：删除 0：未删除',
	create_time timestamp not null comment '创建时间',
	create_name varchar(64) not null comment '创建人',
	modify_name varchar(64) not null comment '操作人',
	modify_time timestamp not null comment '操作时间',
	remark varchar(64) not null comment '备注',
	other varchar(64) not null comment '冗余',
	PRIMARY KEY (`id`)
) ENGINE=INNODB, default charset=utf8;
	
	