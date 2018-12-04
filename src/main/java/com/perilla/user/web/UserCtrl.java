package com.perilla.user.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.perilla.user.dto.User;
import com.perilla.user.service.UserService;

@Controller
@RequestMapping({"/user"})
public class UserCtrl
{
  @Autowired
  private UserService userService;
  
  @ResponseBody
  @RequestMapping(value={"/getUserList.do"}, method={RequestMethod.POST})
  public List<User> getUserList()
  {
    return this.userService.getUserList();
  }
}
