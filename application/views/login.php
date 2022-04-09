<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title><?= $title ?></title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="<?= base_url('') ?>assets/template/assets/img/favicon.png" rel="icon">
    <link href="<?= base_url('') ?>assets/template/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<?= base_url('') ?>assets/template/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url('') ?>assets/template/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="<?= base_url('') ?>assets/template/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="<?= base_url('') ?>assets/template/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="<?= base_url('') ?>assets/template/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="<?= base_url('') ?>assets/template/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="<?= base_url('') ?>assets/template/assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<?= base_url('') ?>assets/template/assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <main>
        <div class="container">

            <div class="flash-data" data-flashdata="<?= $this->session->flashdata('flash') ?>"></div>

            <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                            <div class="d-flex justify-content-center py-4">
                                <a href="index.html" class="logo d-flex align-items-center w-auto">
                                    <img src="assets/template/assets/img/logo.png" alt="">
                                    <span class="d-none d-lg-block">NiceAdmin</span>
                                </a>
                            </div><!-- End Logo -->

                            <div class="card mb-3">

                                <div class="card-body">

                                    <div class="pt-4 pb-2">
                                        <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                                        <p class="text-center small">Enter your username & password to login</p>
                                    </div>

                                    <form class="row g-3 " method="post" action="<?= site_url('Login/login_form') ?>">

                                        <div class="col-12">
                                            <label for="yourUsername" class="form-label">Username</label>
                                            <div class="input-group has-validation">
                                                <input type="text" name="username" class="form-control" id="username" required>
                                                <div class="invalid-feedback">Please enter your username.</div>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <label for="yourPassword" class="form-label">Password</label>
                                            <input type="password" name="password" class="form-control" id="password" required>
                                            <div class="invalid-feedback">Please enter your password!</div>
                                        </div>

                                        <div class="col-12">
                                            <div class="form-check">
                                                <input class="form-check-input" onclick="showPassword()" type="checkbox" name="customCheck" value="true" id="customCheck">
                                                <label class="form-check-label" for="customCheck">Show Password</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-primary w-100" type="submit">Login</button>
                                        </div>
                                    </form>

                                </div>
                            </div>

                            <div class="credits">
                                Designed by <a href="https://fizekronus.com/">Kreator Nusantara Indonesia</a>
                            </div>

                        </div>
                    </div>
                </div>

            </section>

        </div>
    </main><!-- End #main -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="<?= base_url('') ?>assets/template/assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="<?= base_url('') ?>assets/template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?= base_url('') ?>assets/template/assets/vendor/chart.js/chart.min.js"></script>
    <script src="<?= base_url('') ?>assets/template/assets/vendor/echarts/echarts.min.js"></script>
    <script src="<?= base_url('') ?>assets/template/assets/vendor/quill/quill.min.js"></script>
    <script src="<?= base_url('') ?>assets/template/assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="<?= base_url('') ?>assets/template/assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="<?= base_url('') ?>assets/template/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="<?= base_url('') ?>assets/template/assets/js/main.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="<?= base_url('') ?>assets/js/alert-login.js"></script>

    <script>
        function showPassword() {
            var x = document.getElementById("password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</body>

</html>