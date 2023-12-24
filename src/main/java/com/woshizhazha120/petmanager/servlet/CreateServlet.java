package com.woshizhazha120.petmanager.servlet;

import com.woshizhazha120.petmanager.dao.PetDaoImpl;
import com.woshizhazha120.petmanager.entity.Pet;
import com.woshizhazha120.petmanager.exceptions.ApplicationException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeParseException;

@WebServlet("/create")
public class CreateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            var name = req.getParameter("name");
            var breed = Integer.parseInt(req.getParameter("breed"));
            var sex = Integer.parseInt(req.getParameter("sex"));
            var birthday = LocalDateTime.parse(req.getParameter("birthday"));
            var description = req.getParameter("description");

            if (name == null || name.isEmpty() || breed <= 0 || breed > 4 || sex <= 0) {
                resp.sendRedirect(resp.encodeRedirectURL(req.getContextPath() + "/create"));
            }

            var pet = new Pet();
            pet.setPetName(name);
            pet.setPetBreed(breed);
            pet.setPetSex(sex);
            pet.setBirthday(birthday);
            pet.setDescription(description);
            new PetDaoImpl().add(pet);
            resp.sendRedirect(resp.encodeRedirectURL(req.getContextPath() + "/list"));
        } catch (DateTimeParseException | ApplicationException e) {
            req.setAttribute("message", e.getMessage());
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }
    }
}
