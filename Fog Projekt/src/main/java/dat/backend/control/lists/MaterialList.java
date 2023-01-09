package dat.backend.control.lists;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Material;
import dat.backend.model.persistence.CarportFacade;
import dat.backend.model.services.Authentication;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MaterialList", value = "/materialList")
public class MaterialList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (Authentication.isUserLoggedIn(request)) {
            List<Material> materialList = CarportFacade.getMaterials();
            request.setAttribute("materialList", materialList);
            request.getRequestDispatcher("WEB-INF/materiallist.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
