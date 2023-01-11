package dat.backend.control;

import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;
import dat.backend.model.persistence.CarportFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderListCustomerName", value = "/orderListCustomerName")
public class OrderListCustomerName extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        List<Order> orderList = CarportFacade.getOrdersByCustomerName(user.getUsername());
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("WEB-INF/orderlist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
