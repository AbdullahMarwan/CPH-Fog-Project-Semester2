package dat.backend.control;

import dat.backend.model.services.CarportSVG;
import dat.backend.model.services.SVG;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Locale;

@WebServlet(name = "Svg", value = "/svg")
public class Svg extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int length = Integer.parseInt(request.getParameter("length"));
        int width = Integer.parseInt(request.getParameter("width"));
        String viewBox = SVG.addViewBox(0, 0, length, width);

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Locale.setDefault(new Locale("US"));

        SVG carport = CarportSVG.createNewSVG(0, 0, 100, 60, viewBox);
        //carport = CarportSVG.addPerforatedTapeShed(carport, 0, 0);
        carport = CarportSVG.addBeams(carport);


        request.setAttribute("svg", carport.toString());
        request.getRequestDispatcher("WEB-INF/svgdrawing.jsp").forward(request, response);
    }
}
