package com.romantic.factor.util.image;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

/**
 * 通用工具类
 * 
 * @author chenhongxin
 */
public class RandomPictureUtil {
	private RandomPictureUtil() {
	}

	/**
	 * 获取数字随机数
	 * 
	 * @param size 随机数个数
	 * @return 指定个数的数字随机数的字符串
	 */
	public static String getRandom(int size) {
		Random random = new Random();
		StringBuilder sb = new StringBuilder(size);
		for (int i = 0; i < size; i++) {
			sb.append(random.nextInt(9));
		}
		return sb.toString();
	}

	/**
	 * 根据随即码以及宽高绘制图片函数
	 * 
	 * @param g Graphics
	 * @param width 图片宽度
	 * @param height 图片高度
	 * @param randomCode 随机码
	 */
	public static void drawRandomPicture(Graphics g, int width, int height, String randomCode) {
		g.setColor(randColor(200, 250));
		g.fillRect(0, 0, width, height);
		g.setFont(new Font("Times New Roman", Font.PLAIN, 18));
		g.setColor(randColor(160, 200));

		Random random = new Random(System.currentTimeMillis());

		//  随机产生155条干扰线，使图像中的验证码不易被识别
		for (int i = 0; i < 155; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(x, y, x + xl, y + yl);
		}

		//  将验证码显示在图像中
		for (int i = 0; i < 4; i++) {
			g.setColor(randColor(20, 130));
			g.drawString(randomCode.substring(i, i + 1), 13 * i + 6, 16);
		}
	}

	/**
	 * 获得随机色
	 * 
	 * @param fc 前景色
	 * @param bc 背景色
	 * @return 随机色
	 */
	private static Color randColor(int fc, int bc) {
		Random random = new Random(System.currentTimeMillis());
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

	/**
	 * 获取绝对物理路径
	 * 
	 * @param path 相对路径
	 * @return 对应的绝对物理路径字符串
	 */
	public static String getRealPath(HttpServletRequest request, String path) {
		return request.getSession().getServletContext().getRealPath(path);
	}

	/**
	 * 获取网站的BasePath
	 * 
	 * @return 网站的BasePath的字符串
	 */
	public static String getBasePath(HttpServletRequest req) {
		return (req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort() + "/" + req.getContextPath() + "/");
	}
}
