package top.liuqi321.mapper;

import top.liuqi321.bean.OBJECT_T_MALL_SKU;

import java.util.HashMap;
import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.mapper
 * @date : 2018/11/2
 */
public interface ListSkuMapper {
    List<OBJECT_T_MALL_SKU> select_list_by_flbh2(int flbh2);

    List<OBJECT_T_MALL_SKU> select_list_by_attr(HashMap<Object, Object> hashMap);
}
