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

public class UrlPathFilter implements Filter{
	
	@Autowired
	private IUserDao adminMapper;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) arg0;
		HttpServletResponse res = (HttpServletResponse) arg1;
		User user=getAndSetAdminFromSessionOrCookies(req,res);
		
    	//User admin = adminMapper.selectByName("admin");
        if(user==null){
        	user=new User();
        	user.setUsername("您还未登录！");
        }
        req.setAttribute("basePath", UrlUtil.getBasePath(req));
        req.setAttribute("userName", user.getUsername());
        arg2.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
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
}
