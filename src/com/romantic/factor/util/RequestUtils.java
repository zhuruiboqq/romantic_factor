/**
 * @(#)RequestUtils.java, 2010-8-13. Copyright 2010 Jodo, Inc. All rights
 *                        reserved. JODO PROPRIETARY/CONFIDENTIAL. Use is
 *                        subject to license terms.
 */
package com.romantic.factor.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

/**
 * @author Treeman
 */
public class RequestUtils {

    private ServletRequest req;

    private Map<String, String> cookieValueMap = new HashMap<String, String>();

    private void parseCookieValueMapFromHeader() {
        String cookieString = ((HttpServletRequest) req).getHeader("Cookie");
        if (StringUtils.isBlank(cookieString)) {
            return; // 如果cookie字符串为空则返回
        }
        String[] cookieArr = cookieString.split(";");
        if (null == cookieArr || cookieArr.length == 0) {
            return;
        }
        for (String string: cookieArr) {
            String[] arr = string.split("=");
            if (null == arr || arr.length == 0) {
                continue;
            }
            String cKey = arr[0].trim();
            if (arr.length != 1) {
                String cValue = arr[1].trim();
                if (StringUtils.isBlank(cValue) || cValue.equals("\"\"")) {
                    continue;
                }
                if (cKey.equals(cKey)) {
                    cookieValueMap.put(cKey, cValue);
                }
            }
        }
    }

    private RequestUtils(ServletRequest req) {
        this.req = req;
        parseCookieValueMapFromHeader();
    }

    public static RequestUtils from(ServletRequest req) {
        RequestUtils u = new RequestUtils(req);
        return u;
    }

    /**
     * 获取当前url的域，比如163.com
     *
     * @return
     */
    public String getDomain() {
        String sn = req.getServerName();
        if (sn == null || sn.isEmpty()) {
            return null;
        }
        String[] ss = sn.split("\\.");
        return ss[ss.length - 2] + "." + ss[ss.length - 1];
    }

    @Deprecated
    public Cookie getCookie(String key) {
        Cookie[] cookies = ((HttpServletRequest) req).getCookies();
        for (int i = 0; cookies != null && i < cookies.length; i++) {
            Cookie cookie = cookies[i];
            if (cookie == null || !key.equals(cookie.getName())) {
                continue;
            }
            return cookie;
        }
        return null;
    }

    /**
     * 因为在Tomcat中不能通过getCookies获取带有@的CookieValue，所以要自行解析Header["Cookie"]
     * @param key
     * @return
     */
    public Cookie getCookieInHeader(String key) {
        String value = this.cookieValueMap.get(key);
        if (null == value) {
            return null;
        }
        Cookie cookie = new Cookie(key, value);
        return cookie;
    }

    public String get(String key) {
        String s = req.getParameter(key);
        return s;
    }

    /**
     * 获取剪裁过的值
     *
     * @param key
     * @return
     */
    public String getf(String key) {
        String s = this.get(key);
        if (null == s || s.isEmpty()) {
            return null;
        }
        s = s.trim();
        return s.isEmpty() ? null : s;
    }

    public String[] gets(String key) {
        return req.getParameterValues(key);
    }

    public String[] getsf(String key) {
        String[] r = this.gets(key);
        if (null == r) {
            return null;
        }
        for (int i = 0; i < r.length; i++) {
            String ri = r[i];
            if (null == ri || ri.isEmpty()) {
                r[i] = null;
            } else {
                r[i] = ri.trim();
            }
        }
        return r;
    }

    public String join(String[] ss, String split) {
        if (null == ss) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String s: ss) {
            if (null == s) {
                continue;
            }
            if (sb.length() >= 1) {
                sb.append(split);
            }
            sb.append(s);
        }
        return sb.toString();
    }

    public Integer getAsInteger(String key) {
        try {
            String r = this.get(key);
            return Integer.valueOf(r);
        } catch (Exception ex) {
            return null;
        }
    }

    public Float getAsFloat(String key) {
        try {
            String r = this.get(key);
            return Float.valueOf(r);
        } catch (Exception ex) {
            return null;
        }
    }

    public Double getAsDouble(String key) {
        try {
            String r = this.get(key);
            return Double.valueOf(r);
        } catch (Exception ex) {
            return null;
        }
    }

    public Boolean getAsBoolean(String key) {
        try {
            String r = this.get(key);
            if (null == r || r.isEmpty()) {
                return null;
            }
            return Boolean.valueOf(r);
        } catch (Exception ex) {
            return null;
        }
    }

    public Integer[] getAsIntegers(String key) {
        try {
            String[] r = this.gets(key);
            Integer[] rr = new Integer[r.length];
            for (int i = 0; i < r.length; i++) {
                rr[i] = Integer.valueOf(r[i]);
            }
            return rr;
        } catch (Exception ex) {
            return null;
        }
    }

    public Float[] getAsFloats(String key) {
        try {
            String[] r = this.gets(key);
            Float[] rr = new Float[r.length];
            for (int i = 0; i < r.length; i++) {
                rr[i] = Float.valueOf(r[i]);
            }
            return rr;
        } catch (Exception ex) {
            return null;
        }
    }

    public Double[] getAsDoubles(String key) {
        try {
            String[] r = this.gets(key);
            Double[] rr = new Double[r.length];
            for (int i = 0; i < r.length; i++) {
                rr[i] = Double.valueOf(r[i]);
            }
            return rr;
        } catch (Exception ex) {
            return null;
        }
    }
    
    
}
