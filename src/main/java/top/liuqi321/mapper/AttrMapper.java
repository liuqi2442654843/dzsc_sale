package top.liuqi321.mapper;

import org.apache.ibatis.annotations.Param;
import top.liuqi321.bean.OBJECT_T_MALL_ATTR;
import top.liuqi321.bean.T_MALL_VALUE;

import java.util.List;

public interface AttrMapper {
	
	//通过二级编号和属性插入
	public void insert_attr(@Param("flbh2") int flbh2, @Param("attr") OBJECT_T_MALL_ATTR attr);

	
	public void insert_values(@Param("attr_id") int attr_id, @Param("list_value") List<T_MALL_VALUE> list_value);

	public List<OBJECT_T_MALL_ATTR> select_attr_list(int flbh2);


}
