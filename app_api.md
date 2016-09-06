## 1.会员登录

#### 请求方式：GET
/api/member
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|l_name |是 |手机号码、邮箱|
|l_pwd |是 |密码|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data |是 |obuy_model.Member|
    {
	    status:1,
	    msg:"success",
	    data:
		{
		m_id:111,
		open_id:"11",
		m_name:"xhw",      
		nick_name:"xhw",
		m_age:18,
		m_gender:1,
		m_addr:"sss",
		m_province:"sx",
		m_city:"sx",
		m_area:"sx",
		m_img:"/asdda/asdad.png",
		l_name:"xhw",
		l_pwd::"asdasdasd",
		m_phone:123141515,
		is_del:1
		create_time:"2016-9-5  12:00:38",
		create_name:"xhw",
		modify_name:"xhw"
		modify_time:"2016-9-5 12:01:04",
		remark:"remark",
		other:""
	   	    }
    }
      
## 2.会员注册

#### 请求方式：POST
/api/member
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|open_id |是 |open_id|
|m_name |是 |会员名称|
|nick_name |是 |会员昵称|
|m_age |是 |年龄|
|m_gender |是 |性别|
|m_addr |是 |地址|
|m_province |是 |省|
|m_city |是 |市|
|m_area |是 |区|
|m_img |是 |头像|
|m_name |是 |登录名|
|l_pwd |是 |密码|
|m_phone |是 |手机号|
|is_del |是 |是否删除|
|create_time |是 |添加时间|
|create_name |是 |添加人|
|modify_name |是 |修改人|
|modify_time |是 |修改时间|
|remark |是 |备注|
|other |是 |冗余|
#### 返回结构：
    {
	    status:1,
	    msg:"success",
	    data:1
    }
	
	
## 3.会员密码修改

#### 请求方式：PUT
/api/member?type=pwd
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|m_id| 是 | 会员Id |
|old_pwd| 是 | 旧密码 |
|new_pwd| 是 | 新密码 |
#### 返回结构：
    {
	    status:1,
	    msg:"success",
	    data:1
    }
	
## 4.绑定手机号

#### 请求方式：PUT
/api/member?type=phone
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|m_id| 是 | 会员Id |
|m_phone|是|手机号码|
#### 返回结构：
    {
	    status:1,
	    msg:"success",
	    data:1
    }
## 5.绑定邮箱

#### 请求方式：PUT
/api/member?type=email
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|m_id| 是 | 会员Id |
|m_email|是|邮箱|
#### 返回结构：
    {
	    status:1,
	    msg:"success",
	    data:1
    }
## 6.绑定地址

#### 请求方式：PUT
/api/member?type=addr
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|m_id| 是 | 会员Id |
|m_addr|是|地址|
#### 返回结构：
    {
	    status:1,
	    msg:"success",
	    data:1
    }
 
 
## 7.会员详情

#### 请求方式：GET
/api/member/:m_id
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|m_id |是 |会员id|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data |是 |obuy_model.Member|
    {
	    status:1,
	    msg:"success",
	    data:
		{
		m_id:111,
		open_id:"11",
		m_name:"xhw",      
		nick_name:"xhw",
		m_age:18,
		m_gender:1,
		m_addr:"sss",
		m_province:"sx",
		m_city:"sx",
		m_area:"sx",
		m_img:"/asdda/asdad.png",
		l_name:"xhw",
		l_pwd::"asdasdasd",
		m_phone:123141515,
		is_del:1
		create_time:"2016-9-5  12:00:38",
		create_name:"xhw",
		modify_name:"xhw"
		modify_time:"2016-9-5 12:01:04",
		remark:"remark",
		other:""
	   }
    }
    
## 8.下单

#### 请求方式：POST
/api/order
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|id|是|逻辑主键|
|o_no|是         |订单号|
|m_id|是         |会员id|
|sche_id|是      |排期号|
|o_cnt|是        |购买份数|
|o_code|是       |购买码|
|o_amount|是     |购买金额|
|pay_time|是     |支付时间|
|award_status|是 |中奖状态|
|is_del|是       |是否删除 1：删除 0：未删除|
|create_time|是  |创建时间|
|create_name|是  |创建人|
|modify_name|是  |操作人|
|modify_time|是  |操作时间|
|remark|是       |备注|
|other|是        |冗余|

#### 返回结构：
    {
	    status:1,
	    msg:"success",
	    data:1
	}

	
## 9.获取会员的购买记录

#### 请求方式：GET
/api/member/:m_id/order/pginfo
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|m_id|是|会员id|
|p_index|是         |分页 索引|
|p_size|是         |分页 大小|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data|是|[]respmodel.OdGetByMIdPgInfoResp|
    {
	    status:1,
	    msg:"success",
	    data:
		[
		{},
		{},
		{}
		]
	}

## 10.获取某一排期的购买记录

#### 请求方式：GET
/api/proSchedule/:sche_id/order/pginfo
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|m_id|是|会员id|
|p_index|是         |分页 索引|
|p_size|是         |分页 大小|
|sche_id|是        |排期id|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data|是|[]respmodel.OdByScheIdPgInfoResp|
    {
	    status:1,
	    msg:"success",
	    data:
		[
		{},
		{},
		{}
		]
	}

	
	
## 11.获取商品详情
#### 请求方式：GET
/api/product/:pro_id
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|p_id|是|商品id|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data|是|[]respmodel.ProGetByProIdResp|
    {
	    status:1,
	    msg:"success",
	    data:
		{
		}
	}

## 12.根据排期id获取信息

#### 请求方式：GET
/api/proSchedule/:sche_id
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|sche_id|是|排期id|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data|是|[]respmodel.ProScheGetByScheIdResp|
    {
	    status:1,
	    msg:"success",
	    data:
		{
		
		}
	}
	
## 13.获取热门推荐排期的分页信息

#### 请求方式：GET
/api/proSchedule/pginfo?type=hot
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|p_index|是         |分页 索引|
|p_size|是         |分页 大小|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data|是|[]respmodel.ProScheHotPgInfoResp|
    {
	    status:1,
	    msg:"success",
	    data:
		[
		{},
		{},
		{}
		]
	}
## 14.获取即将开奖的分页信息

#### 请求方式：GET
/api/proSchedule/pginfo?type=a
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|p_index|是         |分页 索引|
|p_size|是         |分页 大小|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data|是|[]respmodel.ProScheAwardingPgInfoResp|
    {
	    status:1,
	    msg:"success",
	    data:
		[
		{},
		{},
		{}
		]
	}

## 15.添加支付信息

#### 请求方式：POST
/api/payment
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|p_index|是         |分页 索引|
|p_size|是         |分页 大小|
#### 返回结构：
    {
	    status:1,
	    msg:"success",
	    data:1
	}

## 16.修改支付信息

#### 请求方式：PUT
/api/payment/:pay_id
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|pay_id|是         |支付逻辑主键|
|pay_status|是     |支付状态|
|remark|是|备注|
#### 返回结构：
    {
	    status:1,
	    msg:"success",
	    data:1
	}
## 17.获取会员中奖信息

#### 请求方式：GET
/api/member/:m_id/award/pginfo
#### 请求参数：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|p_index|是         |分页 索引|
|p_size|是         |分页 大小|
|m_id|是|会员id|
#### 返回结构：
| 参数  | 是否必须  | 说明|
|:------------- | -------------:|-------------:|
|data|是|[]respmodel.ProScheGetByScheIdResp|
    {
	    status:1,
	    msg:"success",
	    data:
		[
		{},
		{},
		{}
		]
	}
