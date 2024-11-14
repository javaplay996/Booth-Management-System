package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TaanweiEntity;
import java.util.Map;

/**
 * 摊位信息 服务类
 * @author 
 * @since 2021-05-07
 */
public interface TaanweiService extends IService<TaanweiEntity> {

    /**
    * @param params 查询参数
    * @return 带分页的查询出来的数据
    */
     PageUtils queryPage(Map<String, Object> params);
}