package com.perilla.user.dao;

import com.perilla.user.dto.User;
import com.perilla.user.dto.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("userMapper")
public abstract interface UserMapper
{
  public abstract int countByExample(UserExample paramUserExample);
  
  public abstract int deleteByExample(UserExample paramUserExample);
  
  public abstract int deleteByPrimaryKey(String paramString);
  
  public abstract int insert(User paramUser);
  
  public abstract int insertSelective(User paramUser);
  
  public abstract List<User> selectByExample(UserExample paramUserExample);
  
  public abstract User selectByPrimaryKey(String paramString);
  
  public abstract int updateByExampleSelective(@Param("record") User paramUser, @Param("example") UserExample paramUserExample);
  
  public abstract int updateByExample(@Param("record") User paramUser, @Param("example") UserExample paramUserExample);
  
  public abstract int updateByPrimaryKeySelective(User paramUser);
  
  public abstract int updateByPrimaryKey(User paramUser);
  
  public abstract List<User> selectAll();
}
