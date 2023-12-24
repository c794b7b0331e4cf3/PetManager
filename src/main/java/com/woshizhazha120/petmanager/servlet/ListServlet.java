package com.woshizhazha120.petmanager.servlet;

import com.woshizhazha120.petmanager.dao.PetDaoImpl;
import com.woshizhazha120.petmanager.exceptions.ApplicationException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/list")
public class ListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            PetDaoImpl dao = new PetDaoImpl();

            try {
                var breed = Integer.parseInt(req.getParameter("breed"));

                if (breed <= 0) {
                    throw new ApplicationException("[值]", "无效");
                }

                req.setAttribute("breed", breed);
                req.setAttribute("pets", dao.queryByBreed(breed));
            } catch (NumberFormatException | ApplicationException e) {
                req.setAttribute("pets", dao.queryAll());
            }

            req.getRequestDispatcher("list.jsp").forward(req, resp);
        } catch (ApplicationException e) {
            req.setAttribute("message", e.getMessage());
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }
    }
}
