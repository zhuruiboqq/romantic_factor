package com.romantic.factor.util.image;

import java.awt.Image;
import java.io.File;
import java.io.IOException;

public class ImageFixForIE6 {
	
	
	public static int fixPictureWidth(String picUrl,Integer model){
	    try {   
	        File srcfile = new File(picUrl);   
	        if (!srcfile.exists()) {   
	            return 0;   
	        }   
	        Image src = javax.imageio.ImageIO.read(srcfile);   
	        int w = src.getWidth(null);
	        int h = src.getHeight(null);
	        if(w<h){
	        	Double scale = model.doubleValue()/h;
	        	scale=w*scale;
	        	w=scale.intValue();
	        }else{
	        	w=model;
	        }
	        return w;
	    } catch (IOException ex) {   
	        ex.printStackTrace();  
	        return 0;
	    }   
	}
	
	public static int fixPictureHeight(String picUrl,Integer model){
	    try {   
	        File srcfile = new File(picUrl);   
	        if (!srcfile.exists()) {   
	            return 0;   
	        }   
	        Image src = javax.imageio.ImageIO.read(srcfile);   
	        int w = src.getWidth(null);
	        int h = src.getHeight(null);
	        if(w>h){
	        	Double scale = model.doubleValue()/w;
	        	scale=h*scale;
	        	h=scale.intValue();
	        }else {
	        	h=model;
	        }
	        return h;
	    } catch (IOException ex) {   
	        ex.printStackTrace();  
	        return 0;
	    }   
	}

}
