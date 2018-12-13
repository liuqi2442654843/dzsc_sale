package top.liuqi321.service;

import top.liuqi321.bean.OBJECT_T_MALL_ATTR;

import java.util.List;


public interface AttrServiceInf {
	public void save_attr(int flbh2, List<OBJECT_T_MALL_ATTR> list_attr);

	public List<OBJECT_T_MALL_ATTR> get_attr_list(int flbh2);

}
