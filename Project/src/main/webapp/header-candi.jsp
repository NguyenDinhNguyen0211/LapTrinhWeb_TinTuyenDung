<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 31/12/2022
  Time: 4:24 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<header>
    <!-- Header Start -->
    <div class="header-area header-transparrent">
        <div class="headder-top header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-2 padding-left">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="trang-chu-candi.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <div class="menu-wrapper">
                            <!-- Main-menu -->
                            <div class="main-menu">
                                <nav class="d-none d-lg-block">
                                    <ul id="navigation">
                                        <li><a href="trang-chu-candi.jsp">Trang chủ</a></li>
                                        <li><a href="danh-sach-viec-lam-candi.jsp">Việc làm </a>
                                            <ul class="submenu">
                                                <li><a href="danh-sach-viec-lam-candi.jsp">Tìm việc làm </a></li>
                                                <li><a href="viec-lam-da-ung-tuyen-candi.jsp">Việc làm đã ứng tuyển</a></li>
                                                <li><a href="viec-lam-da-luu-candi.jsp">Việc làm đã lưu</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="Recruitment">Ứng tuyển</a></li>
                                        <li><a href="Company">Công ty</a>
                                        </li>
                                            <li><a>Trang</a>
                                                <ul class="submenu" id="action" >
                                                    <li><a href="PageBlog" target="action">Tin tức</a></li>
                                                    <li><a href="PageContact" target="action">Liên hệ</a></li>
                                                    <li><a href="PageAbout" target="action">Về Chúng tôi</a></li>
                                                </ul>
                                            </li>
                                    </ul>
                                </nav>
                            </div>
                            <!-- Header-btn -->
                            <div class="header-btn d-none f-right d-lg-block">
                                <c:if test="${sessionScope.account == null}">
                                    <a href="dang-ky-candi.jsp" class="btn head-btn2">Đăng kí</a>
                                    <a href="dang-nhap-candi.jsp" class="btn head-btn2">Đăng nhập</a>
                                </c:if>
                                <a href="dang-nhap-busi.jsp" class="btn head-btn1">Nhà tuyển dụng</a>
                                <c:if test="${sessionScope.account != null}">
                                    <a href="tai-khoan-candi.jsp">
                                        <i class="fa fa-user"></i>
                                        <span> Xin chào ${sessionScope.account.name}</span>
                                    </a>
                                    <%--                                <li><a href="logout"><strong>Đăng xuất</strong></a></li>--%>
                                </c:if>


                            </div>
                        </div>
                    </div>
<%--                    <!-- Mobile Menu -->--%>
<%--                    <div class="col-12">--%>
<%--                        <div class="mobile_menu d-block d-lg-none"></div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>
</body>
<script>
    document.getElementById("action").setAttribute("action","action");
</script>
</html>
