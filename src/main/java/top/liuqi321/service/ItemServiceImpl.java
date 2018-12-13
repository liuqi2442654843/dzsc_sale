package top.liuqi321.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.liuqi321.bean.DETAIL_T_MALL_SKU;
import top.liuqi321.bean.T_MALL_SKU;
import top.liuqi321.mapper.ItemMapper;

import java.util.HashMap;
import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.service
 * @date : 2018/11/29
 */

@Service
public class ItemServiceImpl implements ItemServiceInf {

    @Autowired
    ItemMapper itemMapper;

    public DETAIL_T_MALL_SKU get_sku_detail(int sku_id) {

        HashMap<Object,Object> hashMap = new HashMap<Object, Object>();
        hashMap.put("sku_id",sku_id);
        DETAIL_T_MALL_SKU detail_t_mall_sku = itemMapper.select_detail_sku(hashMap);
        return detail_t_mall_sku;
    }

    @Override
    public List<T_MALL_SKU> get_sku_list_by_spu(int spu_id) {
        return itemMapper.select_skuList_by_spu(spu_id);
    }
}
