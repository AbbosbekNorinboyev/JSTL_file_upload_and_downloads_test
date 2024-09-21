package com.example.lesson4;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

@WebServlet(
        name = "com.example.lesson4.FileUploadServlet",
        urlPatterns = "/upload"
)
@MultipartConfig
public class FileUploadServlet extends HttpServlet {
    private static final Path rootPath = Path.of("C:\\Abbos\\Spring Project\\Jakarta EE\\Lesson4\\src\\main\\webapp\\upload\\book");

    @Override
    public void init(ServletConfig config) {
        if (!Files.exists(rootPath)) {
            try {
                Files.createDirectories(rootPath);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/files/upload.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part file = req.getPart("file");
        System.out.println(file.getSubmittedFileName());
        String submittedFileName = file.getSubmittedFileName();
        String newName = UUID.randomUUID() + submittedFileName.substring(submittedFileName.lastIndexOf("."));
        InputStream inputStream = file.getInputStream();
        Files.copy(inputStream, rootPath.resolve(newName), StandardCopyOption.REPLACE_EXISTING);
    }
}
