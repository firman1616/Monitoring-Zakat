<main id="main" class="main">

  <div class="pagetitle">
    <h1>Dashboard</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section dashboard">
    <div class="row">

      <!-- Left side columns -->
      <div class="col-lg-12">
        <div class="row">

          <!-- Sales Card -->
          <?php if ($akses == 1 || $akses == 2 || $akses == 4 || $akses == 5 || $akses == 6) { ?>

            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="card-body">
                  <h5 class="card-title">Total Donatur | <span><?= date('Y') ?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?php if ($jumlah_donatur->total == null) {
                            echo "Rp. 0,-";
                          } else {
                            echo "Rp. " . number_format($jumlah_donatur->total, 0, ',', '.');
                          } ?></h6>
                      <span class="text-success small pt-1 fw-bold"><?= $count_donatur->jumlah ?></span> <span class="text-muted small pt-2 ps-1">Orang</span>

                    </div>
                  </div>
                </div>

              </div>
            </div>
          <?php } ?>
          <!-- End Sales Card -->

          <!-- Revenue Card -->
          <?php if ($akses == 1 || $akses == 2 || $akses == 3 || $akses == 4 || $akses == 6 || $akses == 5) { ?>

            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="card-body">
                  <h5 class="card-title">Total Beras | <span><?= date('Y') ?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-basket-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?php if ($jumlah_beras->total_beras == 0) {
                            echo "0 Kg";
                          } else {
                            echo $jumlah_beras->total_beras . " Kg";
                          } ?></h6>
                      <span class="text-success small pt-1 fw-bold"><?php if ($jumlah_uang_beras->total_uang_fitrah != 0) {
                                                                      echo "Rp. " . number_format($jumlah_uang_beras->total_uang_fitrah, 0, ',', '.');
                                                                    } else {
                                                                      echo "Rp. 0,-";
                                                                    } ?></span> <span class="text-muted small pt-2 ps-1"> </span>
                      <span class="text-success small pt-1 fw-bold"><?= $count_fitrah ?></span> <span class="text-muted small pt-2 ps-1">Orang</span>

                    </div>
                  </div>
                </div>

              </div>
            </div>
          <?php } ?>
          <!-- End Revenue Card -->

          <!-- Zakat Maal Card -->
          <?php if ($akses == 1 || $akses == 2 || $akses == 3 || $akses == 4 || $akses == 6 || $akses == 5) { ?>

            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">


                <div class="card-body">
                  <h5 class="card-title">Total Maal | <span><?= date('Y') ?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?php if ($total_all_maal->nominal != 0) {
                            echo "Rp. " . number_format($total_all_maal->nominal, 0, ',', '.');
                          } else {
                            echo "Rp. 0,-";
                          } ?></h6>
                      <span class="text-success small pt-1 fw-bold"><?php if ($total_maal->maal != 0) {
                                                                      echo "Rp. " . number_format($total_maal->maal, 0, ',', '.');
                                                                    } else {
                                                                      echo "Rp. 0,-";
                                                                    } ?></span>

                      <span class="text-success small pt-1 fw-bold"><?php if ($total_ps->ps != 0) {
                                                                      echo "Rp. " . number_format($total_ps->ps, 0, ',', '.');
                                                                    } else {
                                                                      echo "Rp. 0,-";
                                                                    } ?></span>

                      <span class="text-success small pt-1 fw-bold"><?php if ($total_is->infaq != 0) {
                                                                      echo "Rp. " . number_format($total_is->infaq, 0, ',', '.');
                                                                    } else {
                                                                      echo "Rp. 0,-";
                                                                    } ?></span>

                      <span class="text-success small pt-1 fw-bold"><?php if ($total_fid->fid != 0) {
                                                                      echo "Rp. " . number_format($total_fid->fid, 0, ',', '.');
                                                                    } else {
                                                                      echo "Rp. 0,-";
                                                                    } ?></span>

                    </div>
                  </div>
                </div>

              </div>
            </div>
          <?php } ?>
          <!-- End Zakat Maal Card -->

          <!-- Customers Card -->
          <?php if ($akses == 1 || $akses == 2 || $akses == 3 || $akses == 4 || $akses == 6) { ?>
            <div class="col-xxl-4 col-md-6">

              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">Penerima Zakat <span>| <?= date('Y') ?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?= $penerima_zakat ?> Orang</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->




            <div class="col-xxl-4 col-md-6">

              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">Total Penerima Fakir <span>| <?= date('Y') ?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?= $penerima_fakir
                          ?> Orang</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <div class="col-xxl-4 col-md-6">

              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">Total Penerima Miskkin <span>| <?= date('Y') ?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?= $penerima_miskin
                          ?> Orang</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div>
            <!-- End Customers Card -->

            <div class="col-xxl-4 col-md-6">
              <div class="card info-card customers-card">
                <div class="card-body">
                  <h5 class="card-title">Total Penerima Sabilillah <span>| <?= date('Y') ?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?= $penerima_sabilillah
                          ?> Orang</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          <?php } ?>
          <!-- End Customers Card -->

          <!-- Total Penerima User -->
          <?php
          if ($akses == 7) {
            foreach ($count_kategori->result() as $row) { ?>
              <div class="col-xxl-4 col-md-6">
                <div class="card info-card customers-card">
                  <div class="card-body">
                    <h5 class="card-title">Total Penerima <?= $row->nama_ket ?> <span>| <?= date('Y') ?></span></h5>

                    <div class="d-flex align-items-center">
                      <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <i class="bi bi-people-fill"></i>
                      </div>
                      <div class="ps-3">
                        <h6><?= $row->jumlah;
                            ?> Orang</h6>
                        <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          <?php  }
          }
          ?>
          <!-- End Total Penerima User -->
        </div>

        <!-- Reports -->
        <?php if ($akses != 7) { ?>
          <div class="row">
            <div class="col-md-6">
              <div class="card">

                <div class="card-body">
                  <h5 class="card-title">Zakat Fitrah <span>| Until <?= date('Y') ?></span></h5>

                  <!-- Line Chart -->
                  <!-- <div id="myChart"></div> -->
                  <div class="chart-container" style="width: 100%;">
                    <canvas id="myChart"></canvas>
                  </div>

                </div>

              </div>
            </div>

            <div class="col-md-6">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Zakat Maal <span>| Until <?= date('Y') ?></span></h5>

                  <!-- Line Chart -->
                  <!-- <div id="myChart"></div> -->
                  <div class="chart-container" style="width: 100%;">
                    <canvas id="Maal"></canvas>
                  </div>

                </div>

              </div>
            </div>

          </div>
        <?php } ?>
        <!-- End Reports -->
      </div><!-- End Left side columns -->



    </div>
  </section>

</main><!-- End #main -->

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>

<!-- Fitrah -->
<script type="text/javascript">
  var ctx = document.getElementById('myChart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: [
        <?php
        foreach ($bar_fitrah as $data) {
          echo "'" . $data->tahun . "',";
        }
        ?>
      ],
      datasets: [{
        // label: 'Jumlah Penduduk',
        backgroundColor: '#ADD8E6',
        borderColor: '#93C3D2',
        label: 'Total Berat Zakat',
        data: [

          <?php
          foreach ($bar_fitrah as $data) {
            echo $data->total . ",";
          }
          ?>
        ]
      }],


    },
  });
</script>


<!-- Maal -->
<script type="text/javascript">
  var ctx = document.getElementById('Maal').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: [
        <?php
        foreach ($bar_maal as $data) {
          echo "'" . $data->tahun . "',";
        }
        ?>
      ],
      datasets: [{
        // label: 'Jumlah Penduduk',
        backgroundColor: '#4E944F',
        borderColor: '#93C3D2',
        label: 'Total Maal',
        data: [

          <?php
          foreach ($bar_maal as $data) {
            echo $data->total_maal . ",";
          }
          ?>
        ]
      }, {
        // label: 'Jumlah Penduduk',
        backgroundColor: '#83BD75',
        borderColor: '#93C3D2',
        label: 'Total Partisipasi sosial',
        data: [

          <?php
          foreach ($bar_ps as $data) {
            echo $data->total_ps . ",";
          }
          ?>
        ]
      }, {
        // label: 'Jumlah Penduduk',
        backgroundColor: '#B4E197',
        borderColor: '#B4E197',
        label: 'Total Infaq / Shodaqoh',
        data: [

          <?php
          foreach ($bar_is as $data) {
            echo $data->total_is . ",";
          }
          ?>
        ]
      }, {
        // label: 'Jumlah Penduduk',
        backgroundColor: '#E9EFC0',
        borderColor: '#B4E197',
        label: 'Total Fidyah',
        data: [

          <?php
          foreach ($bar_fidyah as $data) {
            echo $data->total_fidyah . ",";
          }
          ?>
        ]
      }],

    },
  });
</script>
<!-- End Maal -->