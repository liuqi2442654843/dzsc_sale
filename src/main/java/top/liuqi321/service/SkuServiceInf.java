package top.liuqi321.service;

import top.liuqi321.bean.T_MALL_PRODUCT;
import top.liuqi321.bean.T_MALL_SKU;
import top.liuqi321.bean.T_MALL_SKU_ATTR_VALUE;

import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.service
 * @date : 2018/10/24
 */
public interface SkuServiceInf {
    void save_sku(T_MALL_SKU sku, T_MALL_PRODUCT spu, List<T_MALL_SKU_ATTR_VALUE> list_attr);
}
