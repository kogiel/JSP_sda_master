package pl.sda.controllers;
import pl.sda.models.User;
import pl.sda.services.UserService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(
        name="Login",
        value="/login"
)
public class LoginController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        User u = UserService.INSTANCE.loginUser(login, password);
        if (u == null){
            request.setAttribute("wrongCredentials", true);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.getSession().setAttribute("user", u);
//            request.getRequestDispatcher("main.jsp").forward(request, response);
            response.sendRedirect(request.getContextPath() + "/");
        }
    }
}