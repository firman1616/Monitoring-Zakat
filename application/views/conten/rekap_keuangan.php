<main id="main" class="main">

    <div class="pagetitle">
      <h1>Rekap Keaungan</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?= site_url('Dashboard') ?>">Home</a></li>
          <li class="breadcrumb-item"><a href="<?= site_url('Keuangan') ?>"></a> Keuangan</li>
          <li class="breadcrumb-item active">Rekap keuangan</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
    <div class="row">
        <div class="col-lg-6">

          <div class="card">

          

            <div class="card-body">
              <h5 class="card-title">Saldo Keuangan</h5>
              <table class="table table-striped">
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Saldo Beras</td>
                    <td><?php if ($jumlah_uang_beras->total_uang_fitrah != 0) {
                                                                      echo "Rp. " . number_format($jumlah_uang_beras->total_uang_fitrah, 0, ',', '.');
                                                                    } else {
                                                                      echo "Rp. 0,-";
                                                                    } ?></td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Saldo Maal & Fidyah</td>
                    <td><?php if ($saldo_maal_fid->total_maal_fid != 0) {
                                                                      echo "Rp. " . number_format($saldo_maal_fid->total_maal_fid, 0, ',', '.');
                                                                    } else {
                                                                      echo "Rp. 0,-";
                                                                    } ?></td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Saldo Infaq & Partisipasi Sosial</td>
                    <td><?php if ($saldo_is_ps->total_is_ps != 0) {
                                                                      echo "Rp. " . number_format($saldo_is_ps->total_is_ps, 0, ',', '.');
                                                                    } else {
                                                                      echo "Rp. 0,-";
                                                                    } ?></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

        </div>
    </div>

      <div class="row">
        <div class="col-lg-12">

          <div class="card">

          

            <div class="card-body">
              <h5 class="card-title">Example Card</h5>
              <p>This is an examle page with no contrnt. You can use it as a starter for your custom pages.</p>
            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->