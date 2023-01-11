package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;
import dat.backend.model.persistence.CarportFacade;
import dat.backend.model.services.Authentication;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "OrderList", value = "/orderList")
public class OrderList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order> orderList = CarportFacade.getOrders();
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("WEB-INF/orderlist.jsp").forward(request, response);

        /*
        String chosenList = request.getParameter("chosenList");
        List<Order> orderList = new ArrayList<>();
        User user = (User) request.getSession().getAttribute("user");

        if (chosenList == "allOrdersList") {
            orderList = CarportFacade.getOrders();
        } else if (chosenList == "ownOrderList") {
            orderList = CarportFacade.getOrdersByCustomerName(user.getUsername());
        }

        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("WEB-INF/orderlist.jsp").forward(request, response);
         */
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
