package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "SignUp", value = "/SignUp")
public class SignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAOAccount d = new DAOAccount();
        String name = request.getParameter("hoten");
        String user_name = request.getParameter("user_name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String s = request.getParameter("gen");
        int gen = (s != null) ? (s.equals("Nam") ? 1 : 2) : 0;
        String img = null;
        Date date = new Date();
        int role = UtilControl.setRole("btndangky_candi", "btndangky_busi", request);
        if (d.registerCandi(user_name, password, role,name, email, date)) {
            UtilControl.send(role, "Admin-dang-nhap.jsp", "dang-nhap-candi.jsp", "busi-dang-nhap.jsp", response);
        } else {
            String message = d.getMessage();
            request.setAttribute("message", message);
            UtilControl.forward(role, "Admin-dang-ky.jsp", "dang-ky-candi.jsp", "busi-dang-ky.jsp", request, response);
        }
    }


}
