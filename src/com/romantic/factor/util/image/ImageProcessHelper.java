package com.romantic.factor.util.image;

import java.awt.Point;
import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ColorConvertOp;
import java.awt.image.ColorModel;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;

import org.springframework.util.StringUtils;

public class ImageProcessHelper {

	public static void main(String[] args) {
		scale("E:/IMG_2805.jpg", "E:/IMG_2805_cp.jpg", 5, false);
	}

	/**
	 * 缩放图像，按比例绽放
	 * @param srcImageFile 源图像文件路径
	 * @param destImageFile 结果图像保存路径
	 * @param scale 缩放比例，大于0表示放大，小于0表示缩小，等于0不做处理
	 */
	public static void scale(String srcImageFile, String destImageFile, int scale) {
		try {
			BufferedImage srcImage = ImageIO.read(new File(srcImageFile)); // 读入文件
			BufferedImage destImage = ImageProcess.scale(srcImage, scale);
			ImageIO.write(destImage, "JPEG", new File(destImageFile));// 输出到文件流
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 缩放图像，按长度缩放
	 * @param srcImageFile 源图像文件路径
	 * @param destImageFile 结果图像保存路径
	 * @param length 缩放比例
	 * @param isWidth 长度定义：宽度:true 按指定宽度length，按原图比例缩放，即高度按原图比例计算; false 按指定高度;
	 */
	public static void scale(String srcImageFile, String destImageFile, int length, boolean isWidth) {
		try {
			BufferedImage srcImage = ImageIO.read(new File(srcImageFile)); // 读入文件
			BufferedImage destImage = ImageProcess.scale(srcImage, length, isWidth);
			ImageIO.write(destImage, "JPEG", new File(destImageFile));// 输出到文件流
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 图像切割
	 * @param srcImageFile 源图像地址
	 * @param descDir 切片目标文件夹
	 * @param destWidth 目标切片宽度
	 * @param destHeight 目标切片高度
	 */
	public static void cut(String srcImageFile, String descDir, int destWidth, int destHeight) {
		try {
			BufferedImage srcImage = ImageIO.read(new File(srcImageFile)); // 读入文件
			List<BufferedImage> resultList = new ArrayList<BufferedImage>();
			Point point = ImageProcess.cut(srcImage, resultList, destWidth, destHeight);
			for (int i = 0; i < point.x; i++) {
				for (int j = 0; j < point.y; j++) {
					ImageIO.write(resultList.get(i * j), "JPEG", new File(descDir + "pre_map_" + i + "_" + j + ".jpg"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 图像类型转换 GIF->JPG GIF->PNG PNG->JPG PNG->GIF(X)
	 */
	public static void convert(String source, String result) {
		try {
			File f = new File(source);
			f.canRead();
			f.canWrite();
			BufferedImage src = ImageIO.read(f);
			ImageIO.write(src, "JPG", new File(result));
		} catch (Exception e) {
			e.printStackTrace();
		}
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

	/**
	 * 压缩图片
	 * @param srcFilePath
	 * @param destFilePath
	 * @return
	 */
	public static boolean compressPic(String srcFilePath, String destFilePath) {
		File file = null;
		BufferedImage src = null;
		FileOutputStream out = null;
		ImageWriter imgWrier;
		ImageWriteParam imgWriteParams;

		// 指定写图片的方式为 jpg  
		imgWrier = ImageIO.getImageWritersByFormatName("jpg").next();
		imgWriteParams = new javax.imageio.plugins.jpeg.JPEGImageWriteParam(null);
		// 要使用压缩，必须指定压缩方式为MODE_EXPLICIT  
		imgWriteParams.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
		// 这里指定压缩的程度，参数qality是取值0~1范围内，  
		imgWriteParams.setCompressionQuality((float) 0.1);
		imgWriteParams.setProgressiveMode(ImageWriteParam.MODE_DISABLED);
		ColorModel colorModel = ColorModel.getRGBdefault();
		// 指定压缩时使用的色彩模式  
		imgWriteParams.setDestinationType(new javax.imageio.ImageTypeSpecifier(colorModel, colorModel.createCompatibleSampleModel(16, 16)));

		try {
			if (StringUtils.isEmpty(srcFilePath)) {
				return false;
			} else {
				file = new File(srcFilePath);
				src = ImageIO.read(file);
				out = new FileOutputStream(destFilePath);

				imgWrier.reset();
				// 必须先指定 out值，才能调用write方法, ImageOutputStream可以通过任何 OutputStream构造  
				imgWrier.setOutput(ImageIO.createImageOutputStream(out));
				// 调用write方法，就可以向输入流写图片  
				imgWrier.write(null, new IIOImage(src, null, null), imgWriteParams);
				out.flush();
				out.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
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
