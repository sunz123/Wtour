package com.wtour.dao;

import com.wtour.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    User selectByPrimaryKey(Integer userid);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    /**
     * @param start
     * @param limit
     * @return
     */
    List<User> findUserListByPage(@Param("start") Integer start, @Param("limit") Integer limit);

    /**
     *查询所有条数
     * @return
     */
    Integer selectCount();

    /**
     * 批量删除
     * @param ids
     */
    void deleteBatch(@Param("ids") Integer[] ids);

    /**
     * 根据用户的ID更改一个属性
     * @param id
     * @param value
     * @param field
     */
	void updateById(@Param("id") Integer id, @Param("value") String value, @Param("field") String field);
}