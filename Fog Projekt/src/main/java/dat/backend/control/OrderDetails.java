package dat.backend.control;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;
import dat.backend.model.persistence.CarportFacade;
import dat.backend.model.services.CarportSVG;
import dat.backend.model.services.SVG;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

@WebServlet(name = "OrderDetails", value = "/orderDetails")
public class OrderDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("order_id"));

        Order order = CarportFacade.getSpecificOrder(orderId);
        request.setAttribute("order", order);

        Carport carport = CarportFacade.getSpecificCarport(order.getCarportId());
        request.setAttribute("carport", carport);

        String viewBox = SVG.addViewBox(-30, -30, carport.getLength() + 80, carport.getWidth() + 80);

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Locale.setDefault(new Locale("US"));

        SVG svg = CarportSVG.createNewSVG(0, 0, 100, 60, viewBox);
        svg = CarportSVG.addVerticalBeams(svg, carport.getLength(), carport.getWidth());
        svg = CarportSVG.addHorizontalBeams(svg, carport.getLength(), carport.getWidth());
        svg = CarportSVG.addOutlinedEdges(svg, carport.getLength(), carport.getWidth());
        svg = CarportSVG.addPerforatedTapeShed(svg, carport.getLength(), carport.getWidth(), carport.isHasShed());
        svg = CarportSVG.addSquares(svg, carport.getLength(), carport.getWidth(), carport.isHasShed());
        svg = CarportSVG.addArrowHead(svg, carport.getLength(), carport.getWidth());
        if (carport.isHasShed()) {
            svg = CarportSVG.addShed(svg, carport.getLength(), carport.getWidth());
        }
        request.setAttribute("svg", svg.toString());

        request.getRequestDispatcher("WEB-INF/orderdetails.jsp").forward(request, response);
    }
}
