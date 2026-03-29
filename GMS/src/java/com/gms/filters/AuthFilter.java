package com.gms.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AuthFilter
 */
@WebFilter("/*")
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
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		HttpSession session = req.getSession(false);
		String contextPath = req.getContextPath();
		String requestedURL = req.getRequestURI();
		String requestedPath = requestedURL.substring(contextPath.length());
		boolean loggedIn = session != null && "true".equals(session.getAttribute("login"));

		System.out.println("requestedURL : " + requestedURL);

		if ("/auth/error".equals(requestedPath) || requestedPath.startsWith("/auth/img/") || requestedPath.startsWith("/auth/images/")) {
			chain.doFilter(request, response);
			return;
		}

		if (requestedPath.startsWith("/auth/") && !loggedIn) {
			res.sendRedirect(contextPath + "/ticket");
			return;
		}

		if (loggedIn && ("/ticket".equals(requestedPath) || "/userregister".equals(requestedPath))) {
			res.sendRedirect(contextPath + resolveDashboard(session));
			return;
		}

		chain.doFilter(request, response);
	}
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	private String resolveDashboard(HttpSession session) {
		Object role = session.getAttribute("role");
		if ("STAFF".equals(role)) {
			return "/auth/admticketdash";
		}
		if ("STD".equals(role)) {
			return "/auth/userticketdash";
		}
		return "/auth/ticketdash";
	}

}
