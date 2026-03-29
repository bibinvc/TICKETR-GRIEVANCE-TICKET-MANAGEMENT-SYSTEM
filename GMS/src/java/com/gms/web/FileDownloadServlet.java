package com.gms.web;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/auth/empdownloadServlet")
public class FileDownloadServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final Path UPLOAD_ROOT = Paths.get(System.getProperty("user.dir"), "ticketfiles")
            .toAbsolutePath()
            .normalize();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filePath = request.getParameter("filepath");

        if (filePath == null || filePath.trim().isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing file path");
            return;
        }

        Path requestedFile = Paths.get(filePath).toAbsolutePath().normalize();
        if (!requestedFile.startsWith(UPLOAD_ROOT) || !Files.isRegularFile(requestedFile)) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        String fileName = requestedFile.getFileName().toString();
        String contentType = getServletContext().getMimeType(fileName);
        if (contentType == null) {
            contentType = "application/octet-stream";
        }

        response.setContentType(contentType);
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName.replace("\"", "") + "\"");
        response.setContentLengthLong(Files.size(requestedFile));

        try (OutputStream outputStream = response.getOutputStream()) {
            Files.copy(requestedFile, outputStream);
        }
    }
}
