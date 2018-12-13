package top.liuqi321.mapper;

import org.apache.ibatis.annotations.Param;
import top.liuqi321.bean.DETAIL_T_MALL_SKU;
import top.liuqi321.bean.T_MALL_PRODUCT_IMAGE;
import top.liuqi321.bean.T_MALL_SKU;

import java.util.List;
import java.util.Map;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.mapper
 * @date : 2018/11/29
 */
public interface ItemMapper {


    DETAIL_T_MALL_SKU select_detail_sku(Map<Object, Object> map);

    List<T_MALL_SKU> select_skuList_by_spu(@Param("spu_id") int spu_id);

}
