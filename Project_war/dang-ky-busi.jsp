<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 02/01/2023
  Time: 2:28 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%
    String message = (String) request.getAttribute("message");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <title>Đăng ký</title>
    <link rel="stylesheet" type="text/css" href="business/assets/css/signin-business.css">

</head>
<body>
<div id="__nuxt">
    <div id="__layout">
        <div class="auth">
            <div data-v-9281c350="" class="">
                <div data-v-9281c350="" class="register-header-box">
                    <div data-v-9281c350="" class="overlay">
                        <div data-v-9281c350="" class="register-header-logo d-flex justify-content-between p-4">
                            <div data-v-9281c350="" class="back" style="cursor: text">
                                <a data-v-9281c350="" href="#"
                                   class="text-decoration-none text-white">
                                    <span class="">Quay lại</span>
                                </a>
                            </div>
                        </div>
                        <div data-v-9281c350="" class="register-header-description max-width mx-auto"><h2
                                data-v-9281c350="">Đăng ký tài khoản Nhà tuyển dụng</h2>
                        </div>
                    </div>
                </div>
                <div data-v-9281c350="" class="content-container">
                    <div data-v-9281c350="" class="policy-box rounded width-80 margin-left-160">
                        <div data-v-9281c350="" role="button" data-toggle="collapse" data-target=".policy-expand"
                             class="policy-expand-btn">
                            <span data-v-9281c350="" class="text-dark">QUY ĐỊNH</span>
                            <div data-v-9281c350="" class="underline" style="margin-left: 0px"></div>
                        </div>
                        <div data-v-9281c350="" class="policy-expand collapse show fade">
                            <p>
                            <div data-v-9281c350="" class="register-policy">Để đảm bảo chất lượng dịch vụ, TopViecLam
                                <span data-v-9281c350="" class="text-danger">không cho phép một người dùng tạo nhiều tài khoản khác nhau</span>.
                                <br data-v-9281c350=""> Nếu phát hiện vi phạm, TopViecLam sẽ ngừng cung cấp dịch vụ tới
                                tất
                                cả các tài khoản trùng lặp hoặc chặn toàn bộ truy cập tới hệ thống website của
                                TopViecLam.
                                <br data-v-9281c350="">
                                Đối với trường hợp khách hàng đã sử dụng hết 3 tin tuyển dụng miễn phí, TopViecLam hỗ
                                trợ
                                kích hoạt đăng tin tuyển dụng không giới hạn sau khi quý doanh nghiệp cung cấp thông tin
                                giấy phép kinh doanh. <br data-v-9281c350="">
                                <div data-v-9281c350="" class="py-2" style="margin-top: 15px">
                                    <a data-v-9281c350="" href="#" class="text-muted text-decoration-none">Đã
                                        có tài khoản?</a>
                                    <a data-v-9281c350="" href="#" class="text-primary text-decoration-none">
                                        Đăng nhập ngay
                                    </a></div>
                            </div>
                            </p>
                        </div>
                    </div>
                    <div data-v-9281c350="" class=" register-form position-relative width-80 margin-left-160"
                         style="padding-left: 50px">
                        <form data-v-9281c350="" action="SignUp" method="post" role="presentation">
                            <div data-v-9281c350="" class="mb-3"><span data-v-9281c350="" class="font-weight-bold">TÀI KHOẢN</span>
                                <div data-v-9281c350="" class="underline"></div>
                                <%
                                    if (message != null) {
                                %>
                                <div style="width: 95%;
                                            height: calc(1.5em + 0.75rem + 2px);
                                            padding: 0.375rem 0.75rem;
                                            background: #E05E74; border-radius: 5px;
                                            border: 2px solid black">
                                    <label style="color: #4d0203;
                                                  font-size: 1rem;
                                                  font-weight: 400;
                                                  line-height: 1.5;">
                                        <b> ERROR! </b> Đăng ký không thành công.Tài khoản đã tồn tại
                                    </label>
                                </div>
                                <%
                                    }
                                %>


                                <div data-v-9281c350="" class="form-group">
                                    <label data-v-9281c350="" class="col-form-label text-dark">Tên đăng nhập:</label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="ml-auto position-relative">
                                                <input data-v-8c64d55c="" id="id" name="username" type="text"
                                                       placeholder="Tên đăng nhập"
                                                       onkeyup="daoNutDN()" autofocus
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div data-v-9281c350="" class="form-group">
                                    <label data-v-9281c350="" class="col-form-label text-dark">Email:</label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="ml-auto position-relative">
                                                <input id="email" name="email" type="email" onkeyup="daoNutDN()"
                                                       class="form-control"
                                                       placeholder="exc@company.com"
                                                >
                                            </div>
                                        </div>
                                        <div data-v-9281c350="" class="text-muted mt-1">*Đăng ký
                                            bằng email công ty (theo tên miền website công ty) để được hỗ trợ duyệt tin
                                            nhanh
                                            &amp; đăng tin không giới hạn.
                                        </div>
                                    </div>
                                </div>
                                <div data-v-9281c350="" class="form-group">
                                    <label data-v-9281c350="" class="col-form-label text-dark">
                                        Mật khẩu:
                                    </label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                                <input id="pass" name="password" type="password" onkeyup="daoNutDN()"
                                                       placeholder="Mật khẩu (từ 6 đến 25 ký tự)"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div data-v-9281c350="" class="form-group">
                                    <label data-v-9281c350="" class="col-form-label text-dark"> Nhập lại mật
                                        khẩu: </label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                                <input id="pass-again" name="password-again"
                                                       type="password" onkeyup="daoNutDN()"
                                                       placeholder="Nhập lại mật khẩu"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div data-v-9281c350="" class="mb-3"><span data-v-9281c350="" class="font-weight-bold">THÔNG TIN NHÀ TUYỂN DỤNG</span>
                                <div data-v-9281c350="" class="underline"></div>
                                <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""
                                                                                  class="col-form-label text-dark">
                                    Họ và tên:
                                </label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                                <input id="name" name="hoten"
                                                       type="text"
                                                       placeholder="Họ tên"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""
                                                                                  class="col-form-label text-dark">
                                    Số điện thoại cá nhân:
                                </label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-55ff225c="" data-v-9281c350="" class="mask-input">
                                            <input data-v-55ff225c="" id="phone" name="phone"
                                                   placeholder="Số điện thoại cá nhân"
                                                   class="form-control hidden-spin-button"> <!----> <!----></div>
                                    </div>
                                </div>
                                <!--                                GIOI TINH-->
                                <div data-v-9281c350="" class="">
                                    <label data-v-9281c350="" class="" style="padding-top: 15px">
                                        Giới tính:
                                    </label>
                                    <select name="select1" id="gen" name="gen"
                                            class="col-form-label text-dark multiselect__tags col-form-input"
                                            style="width: 30%">
                                        <option value="1">Nam</option>
                                        <option value="2">Nữ</option>
                                    </select>
                                </div>
                            </div>
                            <!--                   énd             -->
                            <!--                                END gioi tinh-->
                            <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""
                                                                              class="col-form-label text-dark">
                                Công ty:
                            </label>
                                <div data-v-9281c350="" class="col-form-input">
                                    <div data-v-8c64d55c="" data-v-9281c350="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <!----> <!----> <input data-v-8c64d55c="" type="text"
                                                                   placeholder="Tên công ty"
                                                                   class="form-control"> <!----></div> <!----></div>
                                </div>
                            </div>
                            <!--                                starrt-->
                            <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""

                                                                              class="col-form-label text-dark">
                                Vị trí công tác:
                            </label>
                                <div class="">
                                    <select name="select1" id="select1" class="multiselect__tags" style="width: 30%">
                                        <option value="1">Nhân viên</option>
                                        <option value="1">Trưởng nhóm</option>
                                        <option value="1">Phó phòng</option>
                                        <option value="1">Trưởng phòng</option>

                                    </select></div>
                            </div>
                            <!--                   énd             -->
                            <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""
                                                                              class="col-form-label text-dark">Địa
                                điểm làm việc:</label>
                                <div data-v-9281c350="" class="col-form-input">
                                    <div data-v-9281c350="" class="row">
                                        <div data-v-9281c350="" class="col-sm-6">
                                            <div data-v-b88e49a4="" data-v-9281c350="">
                                                <div data-v-b88e49a4="" id="SPycYNwOwB"
                                                     class="my-custom-select position-relative"><!---->

                                                    <div tabindex="-1" class="multiselect__content-wrapper"
                                                         style="max-height: 300px; display: none;">

                                                    </div>
                                                </div>
                                                <p></p>
                                                <div data-v-9281c350="" class="col-sm-6">
                                                    <div data-v-9281c350="">
                                                        <div data-v-b88e49a4="" data-v-9281c350="">
                                                            <div data-v-b88e49a4="" id="upjZNkvcsi"
                                                                 class="my-custom-select position-relative disabled">
                                                                <!---->
                                                                <div data-v-b88e49a4="" tabindex="-1"
                                                                     class="multiselect multiselect--disabled">

                                                                    <div class="multiselect__tags-wrap"
                                                                         style="display: none;"></div> <!---->
                                                                    <input data-v-8c64d55c="" id="tplKGYDpAS"
                                                                           type="text"
                                                                           placeholder="Nhập địa chỉ"

                                                                           class="form-control"> <!----></div>
                                                                <!----></div>
                                                            <div tabindex="-1" class="multiselect__content-wrapper"
                                                                 style="max-height: 300px; display: none;">

                                                            </div>
                                                        </div>
                                                    </div> <!----></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-v-9281c350="" class="form-group form-check">
                                <div data-v-9281c350="" class="custom-control custom-checkbox form-check-input my-0"
                                     type="checkbox">
                                    <input id="dieukhoan" onclick="daoNutDN()" type="checkbox"
                                           class="custom-control-input" value="false">
                                    <%--                                    <label for="dieukhoan" class="custom-control-label"></label>--%>
                                </div>
                                <label for="dieukhoan" onclick="daoNutDN()" class="form-check-label">
                                    Tôi đồng ý với
                                    <a data-v-9281c350="" href="#"
                                       class="text-danger text-decoration-none">
                                        &nbsp;Điều khoản dịch vụ&nbsp;
                                    </a>
                                    của TopCV.
                                </label>
                            </div>
                            <div data-v-9281c350="" class="text-center mb-0 mt-4 action-container">
                                <button data-v-9281c350="" type="button"
                                        class="btn min-width btn-secondary btn-lg" style="width: 35%"> Hủy
                                </button>
                                <button data-v-9281c350="" type="submit" id="btndangky" name="btndangky_busi"
                                        class="btn min-width btn-primary btn-lg" style="width: 35%;cursor: not-allowed">
                                    Hoàn tất
                                </button>

                            </div>

                        </form>
                    </div>
                </div>
                <div data-v-0e04a82d="" data-v-9281c350="" id="KCwEl" data-backdrop="static" class="modal"
                     style="display: none;" aria-hidden="true">
                    <div role="document" class="modal-dialog modal-check-register-user">
                        <div class="modal-content border-0">
                            <div class="modal-header border-bottom-1 px-4 border-bottom-0"><h5
                                    class="modal-title text-truncate overflow-hidden text-nowrap"></h5>  <!----></div>
                            <div data-v-0e04a82d="" class="d-flex justify-content-center">
                                <div data-v-0e04a82d="" class="w-75 text-center"><h5 data-v-0e04a82d=""
                                                                                     class="font-weight-bold title">Chào
                                    bạn,</h5>
                                    <p data-v-0e04a82d="" class="mb-4">Bạn hãy dành ra vài giây để xác nhận thông tin
                                        dưới đây nhé!<img data-v-0e04a82d="" src="/app/_nuxt/img/ring.8fa28ce.png"
                                                          width="40"></p></div>
                            </div>
                            <div data-v-0e04a82d=""
                                 class="modal-footer content justify-content-center text-center px-4 mx-0">
                                <div data-v-0e04a82d="" class="font-weight-bold desc">Để tối ưu tốt nhất cho trải nghiệm
                                    của bạn với TopCV,<br data-v-0e04a82d="">vui lòng lựa chọn nhóm phù hợp nhất với
                                    bạn.
                                </div>
                                <div data-v-0e04a82d="" class="row w-100 mb-3">
                                    <div data-v-0e04a82d="" class="col-6"
                                         style="border-right: 1px solid rgb(255, 250, 250);">
                                        <img data-v-0e04a82d="" src="/app/_nuxt/img/bussiness.dfe4b5e.svg" width="262">
                                    </div>
                                    <div data-v-0e04a82d="" class="col-6">
                                        <img data-v-0e04a82d="" src="/app/_nuxt/img/student.031bdde.svg" width="262">
                                    </div>
                                    <div data-v-0e04a82d="" class="col-6">
                                        <a data-v-0e04a82d="" class="btn btn-primary btn-redirect">Tôi là nhà tuyển
                                            dụng</a>
                                    </div>
                                    <div data-v-0e04a82d="" class="col-6">
                                        <a data-v-0e04a82d="" href="#"
                                           class="btn btn-primary btn-redirect">
                                            Tôi là ứng viên tìm việc
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<script>window.__NUXT__ = {config: {}, staticAssetsBase: void 0}</script>--%>
<script>
    document.getElementById("btndangky").disabled = true;
</script>
<script>
    function daoNutDN() {
        var e = document.getElementById("email").value;
        var u = document.getElementById("id").value;
        var p = document.getElementById("pass").value;
        var pa = document.getElementById("pass-again").value;
        var d = document.getElementById("dieukhoan").checked;


        if (e.length > 0 && u.length > 0 && p.length > 0 && pa.length > 0) {
            if (pa != p) {
                document.getElementById("pass-again").style.borderColor = 'red';
                document.getElementById("btndangky").disabled = true;
                document.getElementById("btndangky").style.cursor = 'not-allowed';
            } else {
                document.getElementById("pass-again").style.borderColor = '#f1f3f4';
                document.getElementById("btndangky").disabled = false;
                document.getElementById("btndangky").style.cursor = 'pointer';
            }
        } else {
            document.getElementById("btndangky").disabled = true;
            document.getElementById("btndangky").style.cursor = 'not-allowed';
        }
        if (d === false) {
            document.getElementById("btndangky").disabled = true;
            document.getElementById("btndangky").style.cursor = 'not-allowed';
        }
    }
</script>

<%--<div style="position: absolute; bottom: 0px; left: 0px; width: 1px; height: 1px; overflow: hidden; visibility: hidden;">--%>
<%--    <iframe src="https://lg1.logging.admicro.vn/_tracking1.gif?dg=ef63e0d060c0e7af0677326238e21b9a&amp;fl=-1.-1.&amp;je=0&amp;sr=1366x768&amp;sc=24&amp;hn=tuyendung.topcv.vn&amp;cat=&amp;g=0&amp;i=s%3B1670311544127%3B0%3B0%3B1%3B0%3B0%3B1366x625%3B0%3B0%3Ba5667164881ba03015b10d01720e955b%3Bef63e0d060c0e7af0677326238e21b9a%3BGA1.3.1432301844.1667062627%3B626%3B0%3B0%3B95%3B1%3B9%3B452%3B452&amp;rdm=0.9510369311466611&amp;p=%2Fapp%2Fregister&amp;r=https%3A%2F%2Ftuyendung.topcv.vn%2F%3Futm_source%3Depl-btn%26utm_medium%3Dnav-button%26utm_campaign%3Dclick-tracking&amp;ce=1&amp;lc=5&amp;cr=1645254801&amp;ui=8652548011906387287"--%>
<%--            name="admIframeTracking" id="admIframeTracking"--%>
<%--            style="width: 12px; height: 12px; visibility: hidden; position: absolute; left: 0px; bottom: 0px; border: none;"></iframe>--%>
<%--</div>--%>

</body>

</html>
