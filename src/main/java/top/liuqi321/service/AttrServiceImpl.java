package top.liuqi321.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.liuqi321.bean.OBJECT_T_MALL_ATTR;
import top.liuqi321.mapper.AttrMapper;

import java.util.List;

@Service
public class AttrServiceImpl implements AttrServiceInf{

	@Autowired
	AttrMapper attrMapper;

	public void save_attr(int flbh2, List<OBJECT_T_MALL_ATTR> list_attr) {
		for(int i = 0; i<list_attr.size(); i++){
			
			//插入属性，还回主键
			OBJECT_T_MALL_ATTR attr = list_attr.get(i);
			attrMapper.insert_attr(flbh2, attr);
		
			//获得还回主键批量插入属性值
			attrMapper.insert_values(attr.getId(), attr.getList_value());
		}
		
	}

	public List<OBJECT_T_MALL_ATTR> get_attr_list(int flbh2) {
		List<OBJECT_T_MALL_ATTR> list_attr = attrMapper.select_attr_list(flbh2);
		return list_attr;
	}

}
