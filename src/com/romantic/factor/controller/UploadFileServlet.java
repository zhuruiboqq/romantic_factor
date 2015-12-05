package com.romantic.factor.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.simple.JSONObject;

public class UploadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 902127992052891543L;
	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");// �?��把设置编码配置到过滤器当�?
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//文件保存目录路径
		String savePath = request.getSession().getServletContext().getRealPath("/") + "upload/";

		//文件保存目录URL
		String saveUrl  = request.getContextPath() + "/upload/";

		//定义允许上传的文件扩展名
		HashMap<String, String> extMap = new HashMap<String, String>();
		extMap.put("image", "gif,jpg,jpeg,png,bmp");
		extMap.put("flash", "swf,flv");
		extMap.put("media", "swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb");
		extMap.put("file", "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2");

		//�?��文件大小
		long maxSize = 5*1024*1024;

		if(!ServletFileUpload.isMultipartContent(request)){
			out.println(getError("请�?择文件�?"));
			return;
		}
		//�?��目录
		File uploadDir = new File(savePath);
		if(!uploadDir.isDirectory()){
			out.println(getError("上传目录不存在�?"));
			return;
		}
		//�?��目录写权�?
		if(!uploadDir.canWrite()){
			out.println(getError("上传目录没有写权限�?"));
			return;
		}

		String dirName = request.getParameter("dir");
		if (dirName == null) {
			dirName = "image";
		}
		if(!extMap.containsKey(dirName)){
			out.println(getError("目录名不正确"));
			return;
		}

		savePath += dirName + "/";
		saveUrl += dirName + "/";
		File saveDirFile = new File(savePath);
		if (!saveDirFile.exists()) {//如果保存上传文件的文件夹不存在，创建文件�?
			saveDirFile.mkdirs();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String ymd = sdf.format(new Date());
		savePath += ymd + "/";
		saveUrl += ymd + "/";
		File dirFile = new File(savePath);
		if (!dirFile.exists()) {
			dirFile.mkdirs();
		}

		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("UTF-8");
		List<?> items = null;
		try {
			items = upload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		Iterator<?> itr = items.iterator();
		while (itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			String fileName = item.getName();
			if (!item.isFormField()) {
				//�?��文件大小
				if(item.getSize() > maxSize){
					out.println(getError("上传文件大小超过限制"));
					return;
				}
				//�?��扩展�?
				String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
				if(!Arrays.<String>asList(extMap.get(dirName).split(",")).contains(fileExt)){
					out.println(getError(""/*"上传文件扩展名是不允许的扩展名�?\n只允�? + extMap.get(dirName) + "格式�?*/));
					return;
				}

				SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
				String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;
				try{
					File uploadedFile = new File(savePath, newFileName);
					item.write(uploadedFile);
				}catch(Exception e1){
					out.println(getError("上传文件失败"));
					return;
				}

				JSONObject obj = new JSONObject();
				obj.put("error", 0);
				obj.put("url", saveUrl + newFileName);
				out.println(obj.toJSONString());
			}
		}
	}
	public void init() throws ServletException {
	}
	
	private String getError(String message) {
		JSONObject obj = new JSONObject();
		obj.put("error", 1);
		obj.put("message", message);
		return obj.toJSONString();
	}
}