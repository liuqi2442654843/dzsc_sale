package top.liuqi321.mapper;

import top.liuqi321.bean.T_MALL_SKU;

import java.util.Map;

public interface SkuMapper {

	void insert_sku(T_MALL_SKU sku);

	void insert_sku_av(Map<Object, Object> map);

}
