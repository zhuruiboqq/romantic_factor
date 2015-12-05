package com.romantic.factor.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author lihuai
 */
public class Configure {
  private static Configure instance;
  private Properties props=new Properties();
  
  private Configure(){
    try{
      init();
    }catch(IOException ex){
      throw new RuntimeException(ex);
    }
  }
  public void init() throws IOException{
    InputStream in=Thread.currentThread().getContextClassLoader().getResourceAsStream("application.local.properties");
    if(in==null)throw new FileNotFoundException("application.local.properties");
    props.load(in);
    in.close();
  }
  public static Configure getConfigure(){
    if(instance!=null)return instance;
    instance=new Configure();
    return instance;
  }
  public int getInt(String key){
    String value=props.getProperty(key);
    if(value==null)return -1;   
    return Integer.parseInt(value);
  }
  
  public float getFloat(String key){
    String value=props.getProperty(key);
    if(value==null)return 0;
    return Float.parseFloat(value);
  }
  
  public String getText(String key){
    return props.getProperty(key);
  }
  
  public Properties getProperties(){
  	return props;
  }
}
