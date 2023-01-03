package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ResetPassword", value = "/ResetPassword")
public class ResetPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int role = UtilControl.setRole("btnquenmatkhau-candi", "btnquenmatkhau-busi", request);
//        UtilControl.send(role,"dang-nhap-Admin.jsp","dang-nhap-candi.jsp","dang-nhap-busi.jsp",response);
        response.setContentType("text/html");
        DAOAccount d = new DAOAccount();
        String email = request.getParameter("email");
        String maxacnhan = request.getParameter("");
        if(d.checkEmail(email)){
        response.sendRedirect("ma-xac-nhan.jsp");
        }
        String pass = request.getParameter("password");
    }
}
