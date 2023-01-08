package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Post", value = "/Post")
public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        DAOPost p = new DAOPost();
        Account account = UtilSession.getInstance().getValue(request, "account");
        if (account != null && account.getRole() != 2) {
            request.getRequestDispatcher("viec-lam-da-ung-tuyen-candi.jsp").forward(request, response);
        }//        request.setAttribute("list", p.getPostList());

//        request.getRequestDispatcher("viec-lam-da-luu-candi.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
