package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.MailService;

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
        response.setContentType("text/html");
        DAOAccount d = new DAOAccount();
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        boolean emailExist = d.checkEmail(username,email);
        String name = d.getAccount().getName();
        String password = d.getPassword(username,email);
        int role = d.getAccount().getRole();
        String subject = " Nhận mật khẩu ";
        String content = "Chào " + name + ",  chúng tôi cung cấp lại mật khẩu của bạn: " + password;
        if (!emailExist) {
            request.setAttribute("message", "Email không tồn tại! Vui lòng nhập lại email!");
            UtilControl.forward("forgot-password.jsp", request, response);
        } else {
            MailService.sendMail(email, subject, content);
            UtilControl.send(role, "dang-nhap-Admmin.jsp", "dang-nhap-candi.jsp", "dang-nhap-busi.jsp", response);
        }
    }
}