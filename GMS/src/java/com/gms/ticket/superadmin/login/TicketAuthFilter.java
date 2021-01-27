package com.gms.ticket.superadmin.login;

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
 * Servlet Filter implementation class TicketAuthFilter
 */
@WebFilter("/TicketAuthFilter")
public class TicketAuthFilter implements Filter {

    /**
     * Default constructor. 
     */
    public TicketAuthFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
    @Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
     * @param request
     * @param response
     * @param chain
     * @throws java.io.IOException
     * @throws javax.servlet.ServletException
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
    @Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		
	 HttpServletRequest req = (HttpServletRequest)request;
	 HttpServletResponse res = (HttpServletResponse)response;
	 
	 HttpSession ticketsesion = req.getSession();
	 
	 String ticketreqUrl =req.getRequestURI();
	 System.out.println("url :"+ticketreqUrl);
		
	 if(ticketreqUrl.startsWith("/ticketauth")) {
		 if(ticketsesion.getAttribute("/ticket")!=null && ticketsesion.getAttribute("/ticket").equals("true")) {
			 chain.doFilter(request, response);
		 }else {
			 res.sendRedirect("/ticket");
			 
		 }
		 
	 }else if(ticketreqUrl.startsWith("/ticket")) {
		 if(ticketsesion.getAttribute("/ticket")!=null && ticketsesion.getAttribute("/ticket").equals("true")) {
			 res.sendRedirect("/ticketUserLogOut");
		 }else {
			 chain.doFilter(request, response);
		 }
	 }else {
	 	chain.doFilter(request, response);
	 }
		
		
		
	}

	/**
     * @param fConfig
     * @throws javax.servlet.ServletException
	 * @see Filter#init(FilterConfig)
	 */
    @Override
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
