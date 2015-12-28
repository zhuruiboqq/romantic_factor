package com.romantic.factor.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import javafx.util.Pair;

import com.romantic.factor.sys.util.UUIDUtil;

public class FileUploadUtil {
	public static final String DefaultUploadDictory = "upload";

	/**
	 * 获取文件保存在服务器端的路径
	 * @param billType 单据类型，相当于文件的分类
	 * @param fileName 原文件名，保存时会改变
	 * @return 返回一个Pair，键为相对项目根目录的相对路径，值为服务器端的绝对路径(包含盘符)
	 */
	public static Pair<String, String> getSavePath(HttpServletRequest req, String billType, String fileName) {
		if (StringUtils.isEmpty(billType))
			billType = "temp";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String path = DefaultUploadDictory + "/" + billType + "/" + sdf.format(new Date()) + "/" + getUUIDFileName(fileName);
		String fullPath = getRealPath(req, path);
		return new Pair<String, String>(path, fullPath);
	}

	/**
	 * 根据原文件名，获取新的唯一文件名称。
	 * @param fileName
	 * @return 新的文件名
	 */
	public static String getUUIDFileName(String fileName) {
		String name = String.valueOf(UUIDUtil.uuid());
		int index = fileName.lastIndexOf(".");
		if (index == -1)
			return name;

		return name + fileName.substring(index);
	}

	/**
	 * 获取文件的扩展名
	 * @param fileName
	 * @return
	 */
	public static String getFileNameExtension(String fileName) {
		int index = fileName.lastIndexOf(".");
		if (index == -1 || fileName.length() == index + 1)
			return null;
		return fileName.substring(index + 1);
	}

	/**
	 * 项目根目录所在的绝对路径
	 * @param path
	 * @return
	 */
	public static String getRealPath(HttpServletRequest req, String path) {
		if (req == null)
			return "D:\\" + path;
		return req.getSession().getServletContext().getRealPath(path);
	}
}