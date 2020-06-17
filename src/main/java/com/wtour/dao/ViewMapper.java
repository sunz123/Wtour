package com.wtour.dao;

import com.wtour.pojo.View;
import java.util.List;

public interface ViewMapper {
    int deleteByPrimaryKey(Integer viewid);

    int insert(View record);

    View selectByPrimaryKey(Integer viewid);

    List<View> selectAll();

    int updateByPrimaryKey(View record);


}