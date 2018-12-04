package com.perilla.login.web;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.perilla.user.dto.User;
import com.perilla.user.service.UserService;

@Controller
@RequestMapping({"/login"})
public class LoginCtrl
{
  @Autowired
  private UserService userService;
  
  @RequestMapping(value={"/login.do"}, method={RequestMethod.POST})
  public String login(String yhbh, String passwd, HttpServletRequest request)
  {
    if (StringUtils.isEmpty(yhbh)) {
      return "login";
    }
    User user = this.userService.getUserById(yhbh);
    if (user == null)
    {
      request.setAttribute("result", "登录失败");
      return "login";
    }
    return "/main";
  }
  
  @RequestMapping(value={"/logout.do"}, method={RequestMethod.POST})
  public String logout()
  {
    return "login";
  }
}
