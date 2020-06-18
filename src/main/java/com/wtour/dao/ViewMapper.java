package com.wtour.dao;

import com.wtour.pojo.View;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ViewMapper {
    int deleteByPrimaryKey(Integer viewid);

    int insert(View record);

    View selectByPrimaryKey(Integer viewid);

    List<View> selectAll();

    int updateByPrimaryKey(View record);

    /**
     * 分页查询
     * @param start
     * @param limit
     * @return
     */
	List<View> getViewListById(@Param("start") Integer start, @Param("limit") Integer limit);

    /**
     * 查询总条数
     * @return
     */
    Integer selectCount();
}