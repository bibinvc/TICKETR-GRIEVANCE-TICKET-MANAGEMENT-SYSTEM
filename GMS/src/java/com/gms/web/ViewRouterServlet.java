package com.gms.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {
        "/ticket",
        "/userregister",
        "/error",
        "/auth/error",
        "/auth/dashticket",
        "/auth/admdashticket",
        "/auth/userdashticket",
        "/auth/taskinbox",
        "/auth/admtaskinbox",
        "/auth/usertaskinbox",
        "/auth/newtaskreg",
        "/auth/ticketadmnewtask",
        "/auth/ticketusernewtask",
        "/auth/ticketuserregister"
})
public class ViewRouterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String view = resolveView(request.getServletPath());
        if (view == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        request.getRequestDispatcher(view).forward(request, response);
    }

    private String resolveView(String servletPath) {
        if ("/ticket".equals(servletPath)) {
            return "/index.jsp";
        }
        if ("/userregister".equals(servletPath) || "/auth/ticketuserregister".equals(servletPath)) {
            return "/ticketregister.jsp";
        }
        if ("/error".equals(servletPath) || "/auth/error".equals(servletPath)) {
            return "/error.jsp";
        }
        if ("/auth/dashticket".equals(servletPath)) {
            return "/ticket.jsp";
        }
        if ("/auth/admdashticket".equals(servletPath)) {
            return "/ticketadmindash.jsp";
        }
        if ("/auth/userdashticket".equals(servletPath)) {
            return "/ticketuserdash.jsp";
        }
        if ("/auth/taskinbox".equals(servletPath)) {
            return "/ticketinbox.jsp";
        }
        if ("/auth/admtaskinbox".equals(servletPath)) {
            return "/ticketadmininbox.jsp";
        }
        if ("/auth/usertaskinbox".equals(servletPath)) {
            return "/ticketuserinbox.jsp";
        }
        if ("/auth/newtaskreg".equals(servletPath)) {
            return "/ticketnewtask.jsp";
        }
        if ("/auth/ticketadmnewtask".equals(servletPath) || "/auth/ticketusernewtask".equals(servletPath)) {
            return "/ticketadmnewtask.jsp";
        }
        return null;
    }
}
