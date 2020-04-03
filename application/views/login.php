<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<?= base_url('plugins/serein/') ?>vendors/iconfonts/mdi/font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="<?= base_url('plugins/serein/') ?>vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="<?= base_url('plugins/serein/') ?>vendors/css/vendor.bundle.addons.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="<?= base_url('plugins/serein/') ?>css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="<?= base_url('plugins/serein/') ?>images/logoApp.png" />
</head>

<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth">
                <div class="row w-100">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left p-5">
                            <div class="brand-logo text-center">
                                <img src="<?= base_url('plugins/serein/') ?>images/logoApp.png" alt="logo">
                            </div>
                            <div>
                                <h1 class="text-center">Login</h1><br>
                            </div>
                            <form class="pt-3">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-lg" id="InputUsername" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-lg" id="InputPassword" placeholder="Password">
                                </div>
                                <div class="mt-3">
                                    <button type="button" id="loginButton" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="<?= base_url('plugins/serein/') ?>vendors/js/vendor.bundle.base.js"></script>
    <script src="<?= base_url('plugins/serein/') ?>vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="<?= base_url('plugins/serein/') ?>js/off-canvas.js"></script>
    <script src="<?= base_url('plugins/serein/') ?>js/hoverable-collapse.js"></script>
    <script src="<?= base_url('plugins/serein/') ?>js/template.js"></script>
    <script src="<?= base_url('plugins/serein/') ?>js/settings.js"></script>
    <script src="<?= base_url('plugins/serein/') ?>js/todolist.js"></script>
    <!-- endinject -->
</body>

</html>
<script>
    $('document').ready(function() {
        $("#loginButton").click(function() {
            var username = $("#InputUsername").val();
            var password = $("#InputPassword").val();
            console.log(username, password);
            $.ajax({
                type: 'POST',
                url: "<?= site_url("/Login/login_admin") ?>",
                data: {
                    username: username,
                    password: password
                },
                dataType: "text",
                success: function(resultData) {
                    userDetail = JSON.parse(resultData);
                    if (userDetail.status) {
                        swal(userDetail.msg, "เข้าสู่ระบบ", "success").then(value => {
                            window.location = "<?php echo site_url('Check/check_register'); ?>"
                        });
                    } else {
                        swal(userDetail.msg, "กรุณาตรวจสอบ Email หรือ Password", "error");
                    }
                },
            })
        });
    });
</script>