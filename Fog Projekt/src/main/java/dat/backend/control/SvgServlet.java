package dat.backend.control;

import dat.backend.model.services.CarportSVG;
import dat.backend.model.services.SVG;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Locale;

@WebServlet(name = "SvgServlet", value = "/svg")
public class SvgServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       /* String svg = "<svg width=\"127\" height=\"105\" viewBox=\"0 0 255 210\">\n" +
                "          <rect x=\"0\" y=\"0\" height=\"90\" width=\"90\"\n" +
                "                style=\"stroke:#6dab6e; fill:6d6fab\"/>\n" +
                "    </svg>";*/

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Locale.setDefault(new Locale("US"));

        SVG carport = CarportSVG.createNewSVG(0, 0, 100, 60, "0 0 855 690");
        carport = CarportSVG.addBeams(carport);


        request.setAttribute("svg", carport.toString());
        request.getRequestDispatcher("WEB-INF/svgdrawing.jsp").forward(request, response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
