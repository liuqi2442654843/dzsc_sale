package top.liuqi321.service;

import top.liuqi321.bean.DETAIL_T_MALL_SKU;
import top.liuqi321.bean.T_MALL_SKU;

import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.service
 * @date : 2018/11/29
 */
public interface ItemServiceInf {

    DETAIL_T_MALL_SKU get_sku_detail(int sku_id);

    List<T_MALL_SKU> get_sku_list_by_spu(int spu_id);
}
