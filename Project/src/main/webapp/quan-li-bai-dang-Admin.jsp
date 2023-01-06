<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 9:29 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin | Việc làm mới</title>
  <link type="text/css" href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link type="text/css" href="admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
  <link type="text/css" href="admin/css/theme.css" rel="stylesheet">
  <link type="text/css" href="admin/images/icons/css/font-awesome.css" rel="stylesheet">
  <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
        rel='stylesheet'>
  <link rel="stylesheet" href="admin/css/quan-ly-bai-dang.css">

</head>
<body>
<jsp:include page="header-Admin.jsp"></jsp:include>
<div class="wrapper">
  <div class="container">
    <div class="row">
      <div class="span3">

        <div class="sidebar">
          <ul class="widget widget-menu unstyled">
            <li class="active"><a href="trang-chu.html"><i class="menu-icon icon-dashboard"></i> Bảng điều
              khiển
            </a></li>
            <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i
                    class="menu-icon icon-cogs">
            </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
            </i> Quản lý </a>
              <ul id="togglePages" class=" collapse unstyled">

                <li><a href=""><i class="icon-inbox"></i> Quản lý bài đăng </a></li>

                <li><a href=""><i class="icon-inbox"></i> Quản lý đơn ứng tuyển </a></li>
                <li><a href=""><i class="icon-inbox"></i> Quản lý người dùng</a></li>
              </ul>
            </li>


            <li><a class="collapsed" data-toggle="collapse" href="#togglePages1"><i
                    class="menu-icon icon-tasks">
            </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
            </i> Báo cáo </a>
              <ul id="togglePages1" class="collapse unstyled">
                <li><a href=""><i class="icon-inbox"></i> Thống kê bài đăng </a></li>
                <li><a href=""><i class="icon-inbox"></i> Thống kê ứng tuyển </a></li>
                <li><a href=""><i class="icon-inbox"></i> Thống kê doanh thu </a></li>
              </ul>
            </li>
            <li><a class="collapsed" data-toggle="collapse" href="#togglePages2"><i
                    class="menu-icon icon-cog">
            </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
            </i> Cài đặt giao diện </a>
              <ul id="togglePages2" class="collapse unstyled">
                <li><a href=""><i class="icon-inbox"></i> Màu sắc </a></li>
                <li><a href=""><i class="icon-inbox"></i> Hình ảnh </a></li>
                <li><a href=""><i class="icon-inbox"></i> Tin tức </a></li>
                <li><a href=""><i class="icon-inbox"></i> Liên hệ </a></li>
                <li><a href=""><i class="icon-inbox"></i> Giới thiệu </a></li>
                <li><a href=""><i class="icon-inbox"></i> Quảng cáo </a></li>
              </ul>
            </li>
          </ul>
          <ul class="widget widget-menu unstyled">

            <li><a href="#"><i class="menu-icon icon-signout"></i> Đăng xuất </a></li>
          </ul>

        </div>
      </div>
      <!--/.span3-->
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
          <div class="card-header">
            <h5 class="mb-0">Quản lý bài đăng</h5>
          </div>


          <form class="navbar-search pull-left input-append" action="#">
            <input type="text" style="height:30px" class="span3" placeholder="Tìm kiếm theo tên, chức vụ">
            <button class="btn" type="button">
              <i class="icon-search"></i>
            </button>

            <button class="btn btn-small" style="outline: none">
              <i class="icon-plus"></i>
            </button>

            <button class="btn btn-smalls" style="outline: none">
              <i class="icon-trash"></i>
            </button>

          </form>
          <div class="card-body">
            <div class="table-responsive">
              <table id="example" class="table table-striped table-bordered second"
                     style="width:100%">
                <thead>
                <tr>
                  <th class="stt">STT</th>
                  <th class="tcv">Tên công việc</th>
                  <th class="cv">Chức vụ</th>
                  <th>Số lượng</th>
                  <th>Ngày hết hạn</th>
                  <th class="dc">Địa chỉ</th>
                  <th class="tt">Trạng thái</th>
                  <th>Chức năng</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>1</td>
                  <td>Lập trình viên</td>
                  <td>Nhân viên</td>
                  <td> 3 </td>
                  <td>01/11/2022</td>
                  <td>Quận 2, Tp.HCM, Việt Nam</td>
                  <td class="col-blue">Đã duyệt</td>
                  <td>
                    <!--                                        <button class="btn btn-smalls">-->
                    <!--                                            <i class="icon-filter"></i>-->
                    <!--                                        </button>-->
                    <div class="btn-group ml-auto">
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-lock"></i>
                      </button>
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-trash"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Quản lý hệ thông nhân sự</td>
                  <td>Quản lý</td>
                  <td> 1</td>
                  <td>07/11/2022</td>
                  <td>Quận 12, Tp.HCM, Việt Nam</td>
                  <td class="col-red">Ngừng tuyển</td>
                  <td>
                    <div class="btn-group ml-auto" >
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-lock"></i>
                      </button>
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-trash"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Kỹ thuật điện tử viễn thông</td>
                  <td>Nhân viên</td>
                  <td>2</td>
                  <td>09/11/2022</td>
                  <td>Tp.Dĩ An, T.Bình Dương, Việt Nam</td>
                  <td class="col-yel">Chưa duyệt</td>
                  <td>
                    <div class="btn-group ml-auto">
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-lock"></i>
                      </button>
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-trash"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>Thiết kế và chế tạo cơ khí</td>
                  <td>Nhân viên</td>
                  <td> 5 </td>
                  <td>10/11/2022</td>
                  <td>Ba Đình, Hà Nội, Việt Nam</td>
                  <td class="col-yel">Chưa duyệt</td>
                  <td>
                    <div class="btn-group ml-auto">
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-lock"></i>
                      </button>
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-trash"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>5</td>
                  <td>Java Developer</td>
                  <td>Trưởng nhóm</td>
                  <td> 1</td>
                  <td>12/11/2022</td>
                  <td>Quận1, Tp.HCM, Việt Nam</td>
                  <td class="col-blue">Đã duyệt</td>
                  <td>
                    <div class="btn-group ml-auto">
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-lock"></i>
                      </button>
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-trash"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>6</td>
                  <td>Thợ hồ</td>
                  <td>Công nhân</td>
                  <td>7</td>
                  <td>8/11/2022</td>
                  <td>Quận Tân Bình, Tp.HCM, Việt Nam</td>
                  <td class="col-red">Ngừng tuyển</td>
                  <td>
                    <div class="btn-group ml-auto">
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-lock"></i>
                      </button>
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-trash"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>7</td>
                  <td>Lập trình viên PHP</td>
                  <td>Trưởng nhóm</td>
                  <td> 1</td>
                  <td>15/11/2022</td>
                  <td>Hai Bà Trưng, Hà Nội, Việt Nam</td>
                  <td class="col-blue">Đã duyệt</td>
                  <td>
                    <div class="btn-group ml-auto">
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-lock"></i>
                      </button>
                      <button class="btn btn-sm btn-outline-light" style="outline: none">
                        <i class="icon-trash"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- ============================================================== -->
      <!-- end data table  -->
      <!-- ============================================================== -->
    </div>
  </div>

</div>
<!--/.content-->
</div>
<!--/.span9-->
</div>
</div>
<!--/.container-->
</div>
<!--/.wrapper-->
</body>
<script src="admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="admin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="admin/scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="admin/scripts/common.js" type="text/javascript"></script>

</html>
