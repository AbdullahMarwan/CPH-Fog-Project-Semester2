package dat.backend.control;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;
import dat.backend.model.persistence.CarportFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CreateOrder", value = "/createOrder")
public class CreateOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        int length = Integer.parseInt(request.getParameter("length"));
        //int length = (int) request.getSession().getAttribute("length");
        int width = Integer.parseInt(request.getParameter("width"));
        boolean hasShed = Boolean.parseBoolean(request.getParameter("hasShed"));
        int price = Integer.parseInt(request.getParameter("price"));

        Carport carport = new Carport(length, width, price, hasShed);

        Order order = new Order();
        order.setCustomerName(user.getUsername());

        CarportFacade.createCarport(carport);
        order.setCarportId(carport.getCarportId());

        CarportFacade.createOrder(order);


        //carport.setOrderId(order.getOrderId());

        request.getRequestDispatcher("WEB-INF/carport/confirmation.jsp").forward(request, response);
    }
}
