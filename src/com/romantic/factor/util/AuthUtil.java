/**
 * @(#)AuthUtil.java, 2011-12-12. Copyright 2011 Jodo, Inc. All rights reserved.
 *                    JODO PROPRIETARY/CONFIDENTIAL. Use is subject to license
 *                    terms.
 */
package com.romantic.factor.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.romantic.factor.entity.User;

/**
 * @author Treeman
 */
public class AuthUtil {

    // 可配置变量

    private static String DES_CODE = "365daydayup"; // 默认DES密钥

    private static Long COOKIE_VALID_TIME_LONG = 86400000L; // 默认为1天

    public static String MD5_OBSTRUCT_STRING = "gogoelephant"; // 默认干扰串

    private static Integer PERSISTENT_LOGON_TIME_INT = 7 * 86400; // 默认为1周

    private static Random random = new Random();

    public void setDES_CODE(String dES_CODE) {
        AuthUtil.DES_CODE = dES_CODE;
        desTool.setKey(dES_CODE);
    }

    public void setCOOKIE_VALID_TIME_LONG(Long cOOKIE_VALID_TIME_LONG) {
        AuthUtil.COOKIE_VALID_TIME_LONG = cOOKIE_VALID_TIME_LONG;
    }

    public void setMD5_OBSTRUCT_STRING(String mD5_OBSTRUCT_STRING) {
        AuthUtil.MD5_OBSTRUCT_STRING = mD5_OBSTRUCT_STRING;
    }

    public static void setPERSISTENT_LOGON_TIME_INT(
            Integer pERSISTENT_LOGON_TIME_INT) {
        PERSISTENT_LOGON_TIME_INT = pERSISTENT_LOGON_TIME_INT;
    }

    // 常量

    private static DESTool desTool = new DESTool(DES_CODE);

    //

    protected static final Logger logger = Logger.getLogger(AuthUtil.class);

    private static final String SESSION_ADMIN_KEY = "admin";

    private static final String SESSION_IP_KEY = "ip";

    private static final String SESSION_BASEPATH_KEY = "basePath";

    private static final String COOKIE_AU_KEY = "a";

    private static final String COOKIE_EMAIL_KEY = "u";

    public static User getCurrentAdminFromSession(HttpServletRequest req) {
        return (User) req.getSession().getAttribute(SESSION_ADMIN_KEY);
    }

    public static void setCurrentAdminFromSession(HttpServletRequest req,
    		User admin) {
        req.getSession().setAttribute(SESSION_ADMIN_KEY, admin);
    }

    public static String getCurrentIpFromSession(HttpServletRequest req) {
        return (String) req.getSession().getAttribute(SESSION_IP_KEY);
    }

    public static String getDomainFromSession(HttpServletRequest req) {
        if (req.getRequestURI().contains("mg-api.getapk.cn")) {
            return "mg-api.getapk.cn";
        }
        return "api.getapk.cn";
    }

    public static String getBasePathFromSession(HttpServletRequest req) {
        return (String) req.getSession().getAttribute(SESSION_BASEPATH_KEY);
    }

    public static void setLoginInfo(HttpServletRequest req,
            HttpServletResponse res, User admin, Boolean isPersistentLogon) {
        String domain = getDomainFromSession(req);
        req.getSession().setAttribute(SESSION_ADMIN_KEY, admin);
        //
        String name = admin.getUsername();
        String time = String.valueOf(System.currentTimeMillis());
        RequestUtils ru = RequestUtils.from(req);
        if (ru.getCookieInHeader(COOKIE_AU_KEY) == null) {
            String au = genAucookie(name, admin.getId(), time,
                    isPersistentLogon);
            Cookie auCookie = new Cookie(COOKIE_AU_KEY, au);
            if (isPersistentLogon) {
                auCookie.setMaxAge(PERSISTENT_LOGON_TIME_INT);
            } else {
                auCookie.setMaxAge(-1); // session有效
            }
            auCookie.setDomain(domain);
            auCookie.setPath("/");
            res.addCookie(auCookie);
        }
        if (ru.getCookieInHeader(COOKIE_EMAIL_KEY) == null) {
            Cookie nameCookie = new Cookie(COOKIE_EMAIL_KEY, name);
            nameCookie.setMaxAge(Integer.MAX_VALUE);
            nameCookie.setDomain(domain);
            nameCookie.setPath("/");
            res.addCookie(nameCookie);
        }
    }

    public static void clearCurrentAdminInfo(HttpServletRequest req,
            HttpServletResponse res) {
        String domain = getDomainFromSession(req);
        req.getSession().removeAttribute(SESSION_ADMIN_KEY);
        //
        Cookie auCookie = new Cookie(COOKIE_AU_KEY, "");
        auCookie.setMaxAge(0); // 失效
        auCookie.setDomain(domain);
        auCookie.setPath("/");
        res.addCookie(auCookie);
        Cookie nameCookie = new Cookie(COOKIE_EMAIL_KEY, "");
        nameCookie.setMaxAge(0); // 失效
        nameCookie.setDomain(domain);
        nameCookie.setPath("/");
        res.addCookie(nameCookie);
    }

    /**
     * 检查cookie是否含有合法的登录信息，如果有，则返回auInfo，否则返回null
     * <p>
     * at 20120816 增加url参数的验证，即在url中增加a和u参数也可以用来验证
     * 
     * @param req
     * @return
     */
    public static AuInfo checkAucookie(HttpServletRequest req) {
        RequestUtils ru = RequestUtils.from(req);
        Cookie auCookie = ru.getCookieInHeader(COOKIE_AU_KEY);
        Cookie nameCookie = ru.getCookieInHeader(COOKIE_EMAIL_KEY);
        String au = null;
        String name = null;
        if (null == auCookie || null == nameCookie
                || StringUtils.isBlank(auCookie.getValue())
                || StringUtils.isBlank(nameCookie.getValue())) {
            au = req.getParameter(COOKIE_AU_KEY);
            name = req.getParameter(COOKIE_EMAIL_KEY);
            if (StringUtils.isBlank(au) || StringUtils.isBlank(name)) {
                return null;
            }
        }
        if (StringUtils.isBlank(au) || StringUtils.isBlank(name)) {
            au = auCookie.getValue();
            name = nameCookie.getValue();
        }
        if (au.startsWith("\"") && au.endsWith("\"")) {
            au = au.substring(1, au.length() - 1);
        }
        if (name.startsWith("\"") && name.endsWith("\"")) {
            name = name.substring(1, name.length() - 1);
        }
        String[] auArray = decodeAucookie(au);
        AuInfo auInfo = AuInfo.buildFromAuArray(auArray);
        if (null != auInfo) {
            if (name.equals(auInfo.getName())) {
                if (!auInfo.getIsPersistentLogon()) {
                    if (System.currentTimeMillis() - auInfo.getTime() < COOKIE_VALID_TIME_LONG) {
                        return auInfo;
                    }
                } else {
                    if (System.currentTimeMillis() - auInfo.getTime() < PERSISTENT_LOGON_TIME_INT * 1000L) {
                        return auInfo;
                    }
                }
            }
        }
        return null;
    }

    private static String genAucookie(String name, Integer adminId,
            String time, Boolean isPersistentLogon) {
        StringBuilder sb = new StringBuilder();
        sb.append(name).append(",").append(adminId).append(",").append(time)
                .append(",").append(isPersistentLogon);
        String code = desTool.getEncString(sb.toString());
        try {
            code = URLEncoder.encode(code, "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return code;
    }

    private static String[] decodeAucookie(String code) {
        try {
            if (code.contains("%")) { // 如果仍为UrlEncoded String
                code = URLDecoder.decode(code, "utf-8");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return desTool.getDesString(code).split(",");
    }

    public static String getNameFromCookie(HttpServletRequest req) {
        RequestUtils ru = RequestUtils.from(req);
        Cookie nameCookie = ru.getCookieInHeader(AuthUtil.COOKIE_EMAIL_KEY);
        if (null != nameCookie && StringUtils.isNotBlank(nameCookie.getValue())) {
            return nameCookie.getValue();
        }
        return null;
    }

    public static void main(String[] args) throws InterruptedException {

        args = new String[] {
            "0", "1344501406371",
            "gSmneXdh%2FhdTQCOXvcuYZhC2daHXTxqvTJUrjjG043XZN%2BDJYR32AFYsCClPJwIJ"
        };

        if (args[0].equals("0")) {
            String au = genAucookie("zhangsuiwen", 1, args[1], false);
            System.out.println(au);
            System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxx");
            String[] infos = decodeAucookie(au);
            System.out.println(infos.length + "," + infos[0] + "," + infos[1]);
            System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxx");
            infos = decodeAucookie(args[2]);
            System.out.println(infos.length + "," + infos[0] + "," + infos[1]);
        } else if (args[0].equals("1")) {
            String au = genAucookie("zhangsuiwen", 1, args[1], false);
            System.out.println(au);
            au = genAucookie("zhangsuiwen", 1, args[1], false);
            System.out.println(au);
            Thread.sleep(500);
            au = genAucookie("zhangsuiwen", 1, args[1], false);
            System.out.println(au);
        }
    }

    public static class AuInfo {
        public AuInfo() {}

        public static AuInfo buildFromAuArray(String[] auArray) {
            if (auArray.length >= 4) {
                AuInfo auInfo = new AuInfo();
                auInfo.setName(auArray[0]);
                auInfo.setAdminId(Integer.parseInt(auArray[1]));
                auInfo.setTime(Long.parseLong(auArray[2]));
                auInfo.setIsPersistentLogon(Boolean.parseBoolean(auArray[3]));
                return auInfo;
            }
            return null;
        }

        private String name;

        private Integer adminId;

        private Long time;

        private Boolean isPersistentLogon;

        /**
         * @return the name
         */
        public String getName() {
            return name;
        }

        /**
         * @param name
         *            the name to set
         */
        public void setName(String name) {
            this.name = name;
        }

        /**
         * @return the adminId
         */
        public Integer getAdminId() {
            return adminId;
        }

        /**
         * @param adminId
         *            the adminId to set
         */
        public void setAdminId(Integer adminId) {
            this.adminId = adminId;
        }

        /**
         * @return the time
         */
        public Long getTime() {
            return time;
        }

        /**
         * @param time
         *            the time to set
         */
        public void setTime(Long time) {
            this.time = time;
        }

        /**
         * @return the isPersistentLogon
         */
        public Boolean getIsPersistentLogon() {
            return isPersistentLogon;
        }

        /**
         * @param isPersistentLogon
         *            the isPersistentLogon to set
         */
        public void setIsPersistentLogon(Boolean isPersistentLogon) {
            this.isPersistentLogon = isPersistentLogon;
        }
    }

    public static String md5EncryptPassword(String source) {
        return MD5Util.getMD5String(MD5_OBSTRUCT_STRING + source);
    }

    private static char[] passwordCandidateChars = new char[] {
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
        'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B',
        'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
        'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3',
        '4', '5', '6', '7', '8', '9'
    };

    private static final int DEFAULT_PASSWORD_LENGTH = 8;

    private static final int DEFAULT_VKEY_LENGTH = 6;

    /**
     * 生成默认的密码
     * 
     * @return
     */
    public static String genRandomPassword() {
        int len = passwordCandidateChars.length;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < DEFAULT_PASSWORD_LENGTH; i++) {
            sb.append(passwordCandidateChars[random.nextInt(len)]);
        }
        return sb.toString();
    }

    /**
     * 生成默认的VKEY
     * 
     * @return
     */
    public static String genRandomVKEY() {
        int len = passwordCandidateChars.length;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < DEFAULT_VKEY_LENGTH; i++) {
            sb.append(passwordCandidateChars[random.nextInt(len)]);
        }
        return sb.toString();
    }

}
