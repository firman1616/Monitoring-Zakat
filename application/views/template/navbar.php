<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">


        <li class="nav-item">
            <a class="nav-link collapsed" href="<?= base_url('Dashboard') ?>">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li>

        <?php if ($akses == 1 || $akses == 2 || $akses == 4 || $akses == 5) { ?>
            <li class="nav-item">
                <a class="nav-link collapsed" href="<?= base_url('Pembayaran') ?>">
                    <i class="bi bi-credit-card-fill"></i>
                    <span>Pembayaran Zakat</span>
                </a>
            </li>
        <?php } ?>

        <?php if ($akses == 1 || $akses == 2 || $akses == 3 || $akses == 7) { ?>
            <li class="nav-item">
                <a class="nav-link collapsed" href="<?= base_url('Penerima') ?>">
                    <i class="bi bi-emoji-sunglasses-fill"></i>
                    <span>Data Penerima Zakat</span>
                </a>
            </li>
        <?php } ?>



        <?php if ($akses == 1 || $akses == 2 || $akses == 3 || $akses == 4) { ?>
            <li class="nav-heading">Master</li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="<?= base_url('Master') ?>">
                    <i class="bi bi-gear-fill"></i>
                    <span>Master</span>
                </a>
            </li><!-- End Profile Page Nav -->
        <?php } ?>



    </ul>

</aside><!-- End Sidebar-->