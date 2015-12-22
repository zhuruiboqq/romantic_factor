package com.romantic.factor.util.image;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.Point;
import java.awt.Toolkit;
import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ColorConvertOp;
import java.awt.image.ColorModel;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;

public class ImageProcess {

	/**
	* 缩放图像，按比例绽放
	* @param bufferedImage 源图像文件缓存
	* @param scale        缩放比例，大于0表示放大，小于0表示缩小，等于0不做处理
	*/
	public static BufferedImage scale(BufferedImage bufferedImage, int scale) {
		int width = bufferedImage.getWidth(); // 得到源图宽
		int height = bufferedImage.getHeight(); // 得到源图长
		if (scale < 0) {
			// 缩小
			scale = -scale;//转为正数
			width = width / scale;
			height = height / scale;
		} else if (scale > 0) {
			// 放大
			width = width * scale;
			height = height * scale;
		} else {
			return bufferedImage;
		}
		Image image = bufferedImage.getScaledInstance(width, height, Image.SCALE_DEFAULT);
		BufferedImage resultImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = resultImage.getGraphics();
		g.drawImage(image, 0, 0, null); // 绘制缩小后的图
		g.dispose();
		return resultImage;
	}

	/**
	* 缩放图像，按长度缩放
	* @param bufferedImage 源图像文件缓存
	* @param length        缩放比例
	* @param isWidth         长度定义：宽度:true 按指定宽度length，按原图比例缩放，即高度按原图比例计算; false 按指定高度;
	*/
	public static BufferedImage scale(BufferedImage bufferedImage, int length, boolean isWidth) {
		int width = bufferedImage.getWidth(); // 得到源图宽
		int height = bufferedImage.getHeight(); // 得到源图长
		if (length <= 0) {
			return bufferedImage;
		}
		if (isWidth) {
			// 宽度
			height = height * length / width;
			width = length;
		} else {
			// 高度
			width = width * length / height;
			height = length;
		}
		Image image = bufferedImage.getScaledInstance(width, height, Image.SCALE_DEFAULT);
		BufferedImage resultImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = resultImage.getGraphics();
		g.drawImage(image, 0, 0, null); // 绘制缩小后的图
		g.dispose();
		return resultImage;
	}

	/**
	 * 图像切割，把图像按指定大小切割为多个图像文件
	 * @param bufferedImage 源图像文件缓存
	 * @param resultList   切片图像缓存列表，用于保存切片后的图像缓存
	 * @param destWidth    目标切片宽度
	 * @param destHeight   目标切片高度
	 */
	public static Point cut(BufferedImage bufferedImage, List<BufferedImage> resultList, int destWidth, int destHeight) {
		Point point = new Point();
		Image img;
		ImageFilter cropFilter;
		// 读取源图像
		int srcWidth = bufferedImage.getHeight(); // 源图宽度
		int srcHeight = bufferedImage.getWidth(); // 源图高度
		if (srcWidth > destWidth && srcHeight > destHeight) {
			Image image = bufferedImage.getScaledInstance(srcWidth, srcHeight, Image.SCALE_DEFAULT);
			destWidth = 200; // 切片宽度
			destHeight = 150; // 切片高度
			int cols = 0; // 切片横向数量
			int rows = 0; // 切片纵向数量
			// 计算切片的横向和纵向数量
			if (srcWidth % destWidth == 0) {
				cols = srcWidth / destWidth;
			} else {
				cols = (int) Math.floor(srcWidth / destWidth) + 1;
			}
			if (srcHeight % destHeight == 0) {
				rows = srcHeight / destHeight;
			} else {
				rows = (int) Math.floor(srcHeight / destHeight) + 1;
			}
			point.x = rows;
			point.y = cols;
			// 循环建立切片
			// 改进的想法:是否可用多线程加快切割速度
			for (int i = 0; i < rows; i++) {
				for (int j = 0; j < cols; j++) {
					// 四个参数分别为图像起点坐标和宽高
					// 即: CropImageFilter(int x,int y,int width,int height)
					cropFilter = new CropImageFilter(j * 200, i * 150, destWidth, destHeight);
					img = Toolkit.getDefaultToolkit().createImage(new FilteredImageSource(image.getSource(), cropFilter));
					BufferedImage tag = new BufferedImage(destWidth, destHeight, BufferedImage.TYPE_INT_RGB);
					Graphics g = tag.getGraphics();
					g.drawImage(img, 0, 0, null); // 绘制缩小后的图
					g.dispose();
					resultList.add(tag);
				}
			}
		}
		return point;
	}

	/**
	 * 彩色转为黑白
	 * @param source
	 * @param result
	 */
	public static void gray(String source, String result) {
		try {
			BufferedImage src = ImageIO.read(new File(source));
			ColorSpace cs = ColorSpace.getInstance(ColorSpace.CS_GRAY);
			ColorConvertOp op = new ColorConvertOp(cs, null);
			src = op.filter(src, null);
			ImageIO.write(src, "JPEG", new File(result));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**压缩图像
	 * @param bufferedImage 源图像文件缓存
	 * @param descFilePath
	 * @return
	 */
	public static BufferedImage compress(BufferedImage bufferedImage, ImageWriteParam imgWriteParams) {
		File file = null;
		ImageWriter imgWrier;

		// 指定写图片的方式为 jpg
		imgWrier = ImageIO.getImageWritersByFormatName("jpg").next();
		try {
			imgWrier.reset();
			// 必须先指定 out值，才能调用write方法, ImageOutputStream可以通过任何 OutputStream构造  
			BufferedImage resultImage = new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), BufferedImage.TYPE_INT_RGB);
			imgWrier.setOutput(ImageIO.createImageOutputStream(resultImage));
			// 调用write方法，就可以向输入流写图片  
			imgWrier.write(null, new IIOImage(bufferedImage, null, null), imgWriteParams);
			return resultImage;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static byte[] compressPic(byte[] data) {
		ByteArrayInputStream is = new ByteArrayInputStream(data);

		BufferedImage src = null;
		ByteArrayOutputStream out = null;
		ImageWriter imgWrier;
		ImageWriteParam imgWriteParams;

		// 指定写图片的方式为 jpg  
		imgWrier = ImageIO.getImageWritersByFormatName("jpg").next();
		imgWriteParams = new javax.imageio.plugins.jpeg.JPEGImageWriteParam(null);
		// 要使用压缩，必须指定压缩方式为MODE_EXPLICIT  
		imgWriteParams.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
		// 这里指定压缩的程度，参数qality是取值0~1范围内，  
		imgWriteParams.setCompressionQuality((float) 0.1 / data.length);

		imgWriteParams.setProgressiveMode(ImageWriteParam.MODE_DISABLED);
		ColorModel colorModel = ColorModel.getRGBdefault();
		// 指定压缩时使用的色彩模式  
		imgWriteParams.setDestinationType(new javax.imageio.ImageTypeSpecifier(colorModel, colorModel.createCompatibleSampleModel(16, 16)));

		try {
			src = ImageIO.read(is);
			out = new ByteArrayOutputStream(data.length);

			imgWrier.reset();
			// 必须先指定 out值，才能调用write方法, ImageOutputStream可以通过任何 OutputStream构造  
			imgWrier.setOutput(ImageIO.createImageOutputStream(out));
			// 调用write方法，就可以向输入流写图片  
			imgWrier.write(null, new IIOImage(src, null, null), imgWriteParams);

			out.flush();
			out.close();
			is.close();
			data = out.toByteArray();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
}
