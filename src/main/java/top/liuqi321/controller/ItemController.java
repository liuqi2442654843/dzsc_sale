package top.liuqi321.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import top.liuqi321.bean.DETAIL_T_MALL_SKU;
import top.liuqi321.bean.T_MALL_SKU;
import top.liuqi321.service.ItemServiceInf;

import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.controller
 * @date : 2018/11/29
 */

@Controller
public class ItemController {

    @Autowired
    ItemServiceInf itemServiceInf;

    @RequestMapping("goto_sku_detail")
    public String goto_sku_detail(int sku_id, int spu_id, ModelMap map){
        //查询商品详细信息对象
        DETAIL_T_MALL_SKU obj_sku = itemServiceInf.get_sku_detail(sku_id);

        //查询同spu下的相关的其他sku信息
        List<T_MALL_SKU> list_sku = itemServiceInf.get_sku_list_by_spu(spu_id);

        map.put("obj_sku",obj_sku);
        map.put("list_sku",list_sku);

        return "shopdetail";
    }
}
