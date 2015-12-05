package com.romantic.factor.util;

import java.util.Collection;
import java.util.Iterator;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class StringUtils{

	private static final Log log = LogFactory.getLog(StringUtils.class);
	  public static final String EMPTY = "";
	/**
	 * 取定长字符串,不足的在前面补指定字符
	 * 
	 * @param str
	 *            字符串
	 * @param length
	 *            长度
	 * @param preChar
	 *            不足长度时前面补的字符
	 * @return
	 */
	public static String getFixStr(String str, int length, String preChar) {
		if (str == null) {
			str = "";
		}
		int addLen = length - str.length();
		if (addLen > 0) {
			for (int i = 0; i < addLen ; i++) {
				str = preChar + str;
			}
		}
		return str;
	}
	
	public static boolean isNotBlank(Object oject){
		if(oject!=null&&!oject.equals("")){
			return true;
		}else{
			return false;
		}
	}
	
	public static boolean isBlank(Object oject){
		if(oject==null||oject.equals("")){
			return true;
		}else{
			return false;
		}
	}
	
	  public static String capitalize(String str) {
	        int strLen;
	        if (str == null || (strLen = str.length()) == 0) {
	            return str;
	        }
	        return new StringBuffer(strLen)
	            .append(Character.toTitleCase(str.charAt(0)))
	            .append(str.substring(1))
	            .toString();
	    }
	  
	  public static String join(Collection collection, String separator) {
	        if (collection == null) {
	            return null;
	        }
	        return join(collection.iterator(), separator);
	    }
	
	  public static String join(Iterator iterator, String separator) {

	        // handle null, zero and one elements before building a buffer
	        if (iterator == null) {
	            return null;
	        }
	        if (!iterator.hasNext()) {
	            return EMPTY;
	        }
	        Object first = iterator.next();
	        if (!iterator.hasNext()) {
	             return toString(first);
	        }

	        // two or more elements
	        StringBuffer buf = new StringBuffer(256); // Java default is 16, probably too small
	        if (first != null) {
	            buf.append(first);
	        }

	        while (iterator.hasNext()) {
	            if (separator != null) {
	                buf.append(separator);
	            }
	            Object obj = iterator.next();
	            if (obj != null) {
	                buf.append(obj);
	            }
	        }
	        return buf.toString();
	    }
	  
	    public static String toString(Object obj) {
	        return obj == null ? "" : obj.toString();
	    }
	  
	  public static boolean isEmpty(String str) {
	        return str == null || str.length() == 0;
	    }
	  
	  public static String substringAfter(String str, String separator) {
	        if (isEmpty(str)) {
	            return str;
	        }
	        if (separator == null) {
	            return EMPTY;
	        }
	        int pos = str.indexOf(separator);
	        if (pos == -1) {
	            return EMPTY;
	        }
	        return str.substring(pos + separator.length());
	    }
	  
	  public static boolean equalsIgnoreCase(String str1, String str2) {
	        return str1 == null ? str2 == null : str1.equalsIgnoreCase(str2);
	    }
	  
	  public static String substringBefore(String str, String separator) {
	        if (isEmpty(str) || separator == null) {
	            return str;
	        }
	        if (separator.length() == 0) {
	            return EMPTY;
	        }
	        int pos = str.indexOf(separator);
	        if (pos == -1) {
	            return str;
	        }
	        return str.substring(0, pos);
	    }
	
	public static void main(String[] args) {
		log.info(getFixStr("1", 7, "0"));
		log.info(getFixStr("", 7, "0"));
		log.info(getFixStr("11001", 7, "0"));
		log.info(getFixStr("002", 7, "0"));
	}
}
