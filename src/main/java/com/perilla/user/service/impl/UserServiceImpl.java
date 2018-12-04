package com.perilla.user.service.impl;

import com.perilla.user.dao.UserMapper;
import com.perilla.user.dto.User;
import com.perilla.user.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl
  implements UserService
{
  @Autowired
  private UserMapper userMapper;
  
  public List<User> getUserList()
  {
    return this.userMapper.selectAll();
  }
  
  public User getUserById(String yhbh)
  {
    return this.userMapper.selectByPrimaryKey(yhbh);
  }
}
