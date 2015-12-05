package com.romantic.factor.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.romantic.factor.entity.Message2;
import com.romantic.factor.entity.Status;
import com.romantic.factor.service.Message2Service;
import com.romantic.factor.util.JacksonUtil;
import com.romantic.factor.util.PatternUtil;

@Controller
@RequestMapping(value = "/")
public class MessageController {
	private static Logger logger=LoggerFactory.getLogger(MessageController.class);
	
	
	@Autowired
	private Message2Service message2Service;
	
//	@RequestMapping(value = "/wedding/liuyan.do")
//	 public String getMessage(HttpServletRequest request,HttpServletResponse resp,Model model) {
//	        //Map<String, Object> resultMap = new HashMap<String, Object>();
//			//ModelAndView modelAndView=new ModelAndView();
//			
//	        
//	        //Message message = new Message("admin",new Date(),"sdfsd","odkjf");
//	        
//	        
//	      //  messageService.addMessage(message);
//	        List<Message> list = messageService.getAllMessage("test1", "admin");
//	        //modelAndView.addObject("messagelist", list);
//	       // modelAndView.setViewName("reg");
//	        model.addAttribute("messagelist", list);
//	        return "wedding/liuyan";
//
//	    }
	
	@RequestMapping(value = "/addMessage.do")
	 public void addMessage(HttpServletRequest request
			 ,HttpServletResponse resp
			 ,@RequestParam("name") String name,
			 @RequestParam("qqNum") String qqNum,
			 @RequestParam("telPhone") String telPhone,
			 @RequestParam("email") String email,
			 @RequestParam("address") String address,
			 @RequestParam("suggestion") String suggestion
			 ,Model model) throws ServletException, IOException {		
		Message2 message=new Message2();
		message.setAddress(address);
		message.setCtime(new Date());
		message.setEmail(email);
		message.setName(name);
		message.setQqNum(qqNum);
		message.setSuggestion(suggestion);
		message.setTelPhone(telPhone);
		Status status = checkMessage(message);
		message2Service.addMessage(message);
		
		String result=JacksonUtil.doJacksonSerialize(status);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(result);
		resp.getWriter().close();
	    
		
	}
	
	
	
	private Status checkMessage(Message2 message){
		Status status = new Status();
		if(message==null){
			status.setCode(0);
			status.setMessage("message 不能为空!");
			return status;
		}
		if(!PatternUtil.isEmail(message.getEmail())){
			status.setCode(0);
			status.setMessage("Email格式不对");
			return status;
		}else if(!StringUtils.isNumeric(message.getQqNum())){
			status.setCode(0);
			status.setMessage("qq号码格式不对");
			return status;
		}else if(!StringUtils.isNumeric(message.getTelPhone())){
			status.setCode(0);
			status.setMessage("电话号码格式不对");
			return status;
		}
		
		status.setCode(1);
		status.setStatus(true);
		status.setMessage("success!");
		return status;
		
		
	}
	
}
