package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Order;
import dat.backend.model.persistence.CarportFacade;
import dat.backend.model.services.Authentication;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderList", value = "/orderList")
public class OrderList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (Authentication.isUserLoggedIn(request)) {
            List<Order> orderList = CarportFacade.getOrders();
            request.setAttribute("orderList", orderList);
            request.getRequestDispatcher("WEB-INF/orderlist.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
