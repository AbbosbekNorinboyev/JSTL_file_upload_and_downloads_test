package com.example.lesson4;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@WebServlet(name = "com.example.lesson4.FileDownloadServlet",
        value = "/download")
public class FileDownloadServlet extends HttpServlet {
    private static final Path rootPath = Path.of("C:\\Abbos\\Spring Project\\Jakarta EE\\Lesson4\\src\\main\\webapp\\upload\\book\\");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/files/download.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newFileName = req.getParameter("file");

        try {
            Path filePath = rootPath.resolve(newFileName);

            if (Files.exists(filePath)) {
                byte[] bytes = Files.readAllBytes(filePath);

                // Set the response headers for downloading the file
                resp.setContentType("application/octet-stream");
                resp.setHeader("Content-Disposition", "attachment; filename=\"" + newFileName + "\"");

                // Write the file content to the response output stream
                resp.getOutputStream().write(bytes);
            } else {
                resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                resp.getWriter().println("File not found: " + newFileName);
            }
        } catch (IOException e) {
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.getWriter().println("Internal server error: " + e.getMessage());
            e.printStackTrace();  // Log the exception for debugging purposes
        }
    }
}
