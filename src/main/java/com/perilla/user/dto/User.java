package com.perilla.user.dto;

import java.util.Date;

public class User
{
  private String id;
  private String yhbh;
  private String yhmc;
  private Integer age;
  private Date birth;
  
  public String getId()
  {
    return this.id;
  }
  
  public void setId(String id)
  {
    this.id = (id == null ? null : id.trim());
  }
  
  public String getYhbh()
  {
    return this.yhbh;
  }
  
  public void setYhbh(String yhbh)
  {
    this.yhbh = (yhbh == null ? null : yhbh.trim());
  }
  
  public String getYhmc()
  {
    return this.yhmc;
  }
  
  public void setYhmc(String yhmc)
  {
    this.yhmc = (yhmc == null ? null : yhmc.trim());
  }
  
  public Integer getAge()
  {
    return this.age;
  }
  
  public void setAge(Integer age)
  {
    this.age = age;
  }
  
  public Date getBirth()
  {
    return this.birth;
  }
  
  public void setBirth(Date birth)
  {
    this.birth = birth;
  }
}
