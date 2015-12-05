package com.romantic.factor.init;

import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

import com.romantic.factor.util.Configure;

public class RomanticInit implements ServletContextListener{
	
//	@Autowired
//	PhotoerWorksService photoerService;
//	PhotoerWorksService photoerService=new PhotoerWorksService();
	private Timer timer=new Timer(true);
	
	
    public void contextInitialized(ServletContextEvent arg0) {
    	System.out.println("RomanticInit init!");
    	String secend = Configure.getConfigure().getText("secend");
    	timer.schedule(new TimerTask(){
			public void run(){
				
				clean();
			}
		}, 1000,Integer.valueOf(secend)*1000);
    	

    }
    
    public void contextDestroyed(ServletContextEvent arg0) {
    	System.out.println("InitService cancel!");
    	timer.cancel();
       
    }
	
    private void clean(){
    	String cleanUrl = Configure.getConfigure().getText("cleanUrl");
    	
    	HttpPost httpPost=new HttpPost(cleanUrl);
		//HttpPost httpPost=new HttpPost("http://1/freejpoint2-server/userfingerinfo/info.do");
		//List<NameValuePair> nvps=new ArrayList<NameValuePair>();
		
		
		
		//httpPost.setEntity(new UrlEncodedFormEntity(nvps, Consts.UTF_8));
	    HttpResponse response;
	        
	    try{   
	        HttpClient client = new DefaultHttpClient();  
			response = client.execute(httpPost);
			if(response.getStatusLine().getStatusCode() == 200)  
	        {  
				byte[] bytes = EntityUtils.toByteArray(response.getEntity());
				String result = new String(bytes, "UTF-8");
				//log.info(result);  
	        } 

		}catch(Exception ex){
			ex.printStackTrace();
		}

    }

}
