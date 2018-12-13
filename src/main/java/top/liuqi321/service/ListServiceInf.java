package top.liuqi321.service;

import top.liuqi321.bean.OBJECT_T_MALL_SKU;
import top.liuqi321.bean.T_MALL_SKU_ATTR_VALUE;

import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.service
 * @date : 2018/11/2
 */
public interface ListServiceInf {

    List<OBJECT_T_MALL_SKU> get_list_by_flbh2(int flbh2);

    List<OBJECT_T_MALL_SKU> get_list_by_attr(List<T_MALL_SKU_ATTR_VALUE> list_attr,int flbh2);
}
