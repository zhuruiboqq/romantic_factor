package com.romantic.factor.util.io;

import java.io.File;
import java.io.FilenameFilter;

public class ImageFileFilter implements FilenameFilter {
	public boolean isGif(String file) {
		if (file.toLowerCase().endsWith(".gif")) {
			return true;
		} else {
			return false;
		}
	}

	public boolean isJpg(String file) {
		if (file.toLowerCase().endsWith(".jpg") || file.toLowerCase().endsWith(".jpeg")) {
			return true;
		} else {
			return false;
		}
	}

	public boolean isPng(String file) {
		if (file.toLowerCase().endsWith(".png")) {
			return true;
		} else {
			return false;
		}
	}

	public boolean accept(File dir, String fname) {
		File file = new File(dir,fname);
		if(file.isDirectory()){
			return true;
		}
		boolean result = (isGif(fname) || isJpg(fname) || isPng(fname));
		if (!result) {
			System.out.println(dir +"\\"+ fname);
		}
		return result;
	}
}
