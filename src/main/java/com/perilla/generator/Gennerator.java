package com.perilla.generator;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

public class Gennerator
{
  public static void generator()
    throws Exception
  {
    List<String> warnings = new ArrayList<String>();
    boolean overwrite = false;
    
    File configFile = new File("G:\\workspaces\\perilla\\src\\main\\java\\config\\platform\\mybatis-generator.xml");
    ConfigurationParser cp = new ConfigurationParser(warnings);
    Configuration config = cp.parseConfiguration(configFile);
    DefaultShellCallback callback = new DefaultShellCallback(overwrite);
    MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, 
      callback, warnings);
    myBatisGenerator.generate(null);
  }
  
  public static void main(String[] args)
    throws Exception
  {
    try
    {
      
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
  }
}
