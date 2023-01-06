<%@ page import="vn.edu.hcmuaf.fit.model.Account" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/01/2023
  Time: 3:59 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
</head>

<body>
<section>
    <div class="img-bg">
        <img src="assets/img/log_in/img.png" alt="">
    </div>

    <div class="noi-dung">
        <!-- Logo -->
        <div class="logo-log">
            <a href="dang-nhap-candi.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
        </div>
        <!-- Form -->
        <div class="form">
            <h2 class="in">Quên mật khẩu </h2>
            <form action="ResetPassword" method="post">
                <div id="modal">
                    <!--Nhập email-->
                    <div id="modal1">
                        <div class="input-form">
                            <span>Email</span>
                            <input id="email" name="email" type="email" class="input"
                                   placeholder="Nhập email của bạn">
                        </div>
                        <div class="input-form">
                            <input id="btnnhanma" name="btnnhanma-candi" type="submit" value="Nhận mã xác nhận">
                            <%--                            <button id="btnnhanma" name="btnnhanma-candi" type="button" value="">Nhận mã xác nhận--%>
                            <%--                            </button>--%>
                        </div>
                        <div class="input-form">
                            <p>Bằng việc thực hiện đổi mật khẩu, bạn đã đồng ý với <a href="#">Điều khoản dịch vụ</a> và
                                <a href="#">Chính sách
                                    bảo mật</a> của chúng tôi</p>
                        </div>
                        <div>
                            <div class="left"><a class="in" href="dang-nhap-candi.jsp">Quay lại đăng nhập</a></div>
                            <div class="right"><a class="in" href="dang-ky-candi.jsp">Đăng ký tài khoản mới</a></div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

</body>
<script>
    const btn_nhanma = document.getElementById('btnnhanma');
    const btn_datlaimk = document.getElementById('btndatlaimk');
    const btn_done = document.getElementById('btndone');

    const modal1 = document.getElementById('modal1');
    const modal2 = document.getElementById('modal2');
    const modal3 = document.getElementById('modal3');

    btn_nhanma.addEventListener("click", () => {
        modal1.classList.add("close");
        modal2.classList.remove("close");
        modal2.classList.add("show");
    });

    btn_datlaimk.addEventListener("click", () => {
        modal2.classList.remove("show");
        modal2.classList.add("close");
        modal3.classList.remove("close");
        modal3.classList.add("show");
    });
</script>

</html>