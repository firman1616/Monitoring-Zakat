<footer id="footer" class="footer">
    <div class="copyright">
        &copy; Copyright <strong><span>KRONUS ID</span></strong>. <?= date('Y') ?>
    </div>
    <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
        Designed by <a href="https://fizekronus.com/">Kereator Nusantara Indonesia</a>
    </div>
</footer><!-- End Footer -->

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

<?php
if (isset($footer_js)) {
    foreach ($footer_js as $fjs) { ?>
        <script type="text/javascript" src="<?= base_url($fjs) ?>"></script>
<?php }
} ?>



</body>

</html>