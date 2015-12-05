package com.romantic.factor.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PatternUtil {
	public static boolean isEmail(String email){
		if(null==email||"".equals(email))
			return false;
		
		Pattern p =Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-+.]\\w+)*\\.\\w+([-.]\\w+)*");
		
		Matcher m = p.matcher(email);
		
		return m.matches();
	}
}
