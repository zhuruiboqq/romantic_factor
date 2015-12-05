/**
 * @(#)LoginFilter.java, 2012-6-15. Copyright 2012 Jodo, Inc. All rights
 *                       reserved. JODO PROPRIETARY/CONFIDENTIAL. Use is
 *                       subject to license terms.
 */
package com.romantic.factor.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.romantic.factor.dao.IUserDao;
import com.romantic.factor.entity.User;
import com.romantic.factor.util.AuthUtil;
import com.romantic.factor.util.AuthUtil.AuInfo;
import com.romantic.factor.util.UrlUtil;

/**
 * @author Treeman
 */
public class LoginFilter implements Filter {

    @Override
    public void destroy() {

    }

//    private IUserDao adminMapper;
//
//    /**
//     * @param adminMapper
//     *            the adminMapper to set
//     */
//    public void setAdminMapper(IUserDao adminMapper) {
//        this.adminMapper = adminMapper;
//    }
    @Autowired
	private IUserDao adminMapper;

    private User getAdmin(String name) {
    	User admin = adminMapper.selectByName(name);
        if (null == admin) {
            // 用户不存在
            admin = new User();
            admin.setUsername(name);
            admin.setStatus(false);
        }
        return admin;
    }

    @SuppressWarnings("unchecked")
    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1,
            FilterChain arg2) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) arg0;
        HttpServletResponse res = (HttpServletResponse) arg1;

        try {

            User admin = getAndSetAdminFromSessionOrCookies(req, res);

            if (null == admin) { // 未登录
                String url = UrlUtil.getSubPath(req);

                // 把原来的参数填回去
                int count = 0;
//                for (Enumeration<String> enumeration = req.getParameterNames(); enumeration
//                        .hasMoreElements();) {
//                    String name = enumeration.nextElement();
//                    url += (count == 0 ? "?" : "&") + name + "="
//                            + req.getParameter(name);
//                    count++;
//                }
//
//                // urlencode
//                url = URLEncoder.encode(url, "utf-8");
//                String loginUrl = UrlUtil.getBasePath(req)
//                        + "/member/login.do?redir=" + url;
//
//                res.sendRedirect(loginUrl);

                return;

            } else if (!admin.getStatus()) { // 无效用户
                res.setStatus(401);
                return;
            }

            req.setAttribute("admin", admin);
            req.setAttribute("basePath", UrlUtil.getBasePath(req));

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }

        arg2.doFilter(arg0, arg1);

    }

    /**
     * 从session和cookie检查登录状态，如果含有，则返回用户信息
     * 
     * @param req
     * @param res
     * @return
     */
    protected User getAndSetAdminFromSessionOrCookies(HttpServletRequest req,
            HttpServletResponse res) {
        User admin = AuthUtil.getCurrentAdminFromSession(req);
        if (null == admin) { // session已过期
            AuInfo auInfo = AuthUtil.checkAucookie(req);
            if (null != auInfo) {
                if (StringUtils.isNotBlank(auInfo.getName())) { // cookie中还有合法的登录信息
                    admin = getAdmin(auInfo.getName());
                    AuthUtil.setLoginInfo(req, res, admin,
                            auInfo.getIsPersistentLogon());
                }
            }
        }
        return admin;
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {

    }
}
