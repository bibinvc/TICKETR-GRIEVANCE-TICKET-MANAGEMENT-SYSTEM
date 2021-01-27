package com.gms.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AuthFilter
 */
public class AuthFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AuthFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//System.out.println("check..........");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		HttpSession session  = req.getSession();
		
		String requestedURL = req.getRequestURI();
		
	  	  System.out.println("requestedURL : "+requestedURL);
		
		if(requestedURL.startsWith("/auth")){
			if(session.getAttribute("login") != null && session.getAttribute("login").equals("true")){
				chain.doFilter(request, response);
			}
			else{
				res.sendRedirect("/UserLogOut");	
			}
		}else if(requestedURL.startsWith("/login")){
			if(session.getAttribute("login") != null && session.getAttribute("login").equals("true")){
				res.sendRedirect("/UserLogOut");	
			}else{
				chain.doFilter(request, response);
			}
		}else{
			chain.doFilter(request, response);
		}
	}
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
