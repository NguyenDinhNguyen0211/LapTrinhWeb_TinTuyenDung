package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        DAOAccount d = new DAOAccount();
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        int role = UtilControl.setRole("btndangnhap_candi", "btndangnhap_busi", request);
        if (d.checkAccount(user, pass,role)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("account", (Account) d.getAccount());
            UtilControl.send(d.getAccount().getRole(), "trang-chu-admin.jsp", "trang-chu-candi.jsp", "trang-chu-busi.jsp", response);
        } else {
            request.setAttribute("message", d.getMessage());
            UtilControl.forward(role, "dang-nhap-admin.jsp", "dang-nhap-candi.jsp", "dang-nhap-busi.jsp", request, response);
        }
    }
}
