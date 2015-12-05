/**
 * @(#)Jodo, 2013-5-2
 */
package com.romantic.factor.util;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Treeman
 */
public class UrlUtil {

    public static String getBasePath(HttpServletRequest req) {
        String path = req.getContextPath().replaceAll("/$", "");
        String basePath = req.getScheme() + "://" + req.getServerName()
                + (req.getServerPort() != 80 ? ":" + req.getServerPort() : "")
                + path;
        return basePath;
    }

    public static String getSubPath(HttpServletRequest req) {
        if (req.getServletPath().endsWith(".jsp")) {
            return req.getServletPath().replaceAll("^/WEB-INF/view?", "")
                    .replaceAll("\\.ftl$", "")
                    + ".html";
        } else {
            return req.getServletPath();
        }
    }

    public static String getFullPath(HttpServletRequest req) {
        return getBasePath(req) + getSubPath(req);
    }

}
