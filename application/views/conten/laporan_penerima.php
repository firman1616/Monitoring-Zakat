<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title_pdf; ?></title>

</head>
<?php
foreach ($data_penduduk->result() as $row) {
    $a = $row->nama_master_alamat;
    $b = $row->nama_petugas;
    $c = $row->validation_data;
}
?>

<body>
    <table width="100%">
        <tbody>
            <tr>
                <td width="21%">
                    <center><img src="<?= base_url('') ?>assets/logo/kop_laziz.png" width="102" height="50" alt="" /></center>
                </td>
                <td width="65%" align="center" valign="middle">
                    <strong>JARINGAN PENGELOLA ZAKAT FITRAH, ZAKAT MAAL, INFAQ SHODAQOH DAN PARTISIPASI SOSIAL</strong><br>
                    <strong>MASJID BESAR "NURUL HUDA" JANTI</strong><br>
                    <strong>TAHUN 1443H / 2022M</strong>
                </td>
                <td width="14%">
                    <center><img src="<?= base_url('') ?>assets/logo/nh.png" width="96" height="66" alt="" /></center>
                </td>
            </tr>
        </tbody>
    </table>
    <center>Sekretariat : Jl. Brigjen Katamso I, Janti, Waru - Sidoarjo</center>
    <hr>
    <table>
        <tr>
            <td>Nama Koordinator</td>
            <td>:</td>
            <td><?= $b ?></td>
        </tr>
        <tr>
            <td>Alamat Koordinator</td>
            <td>:</td>
            <td><?= $a ?></td>
        </tr>
        <tr>
            <td>Status</td>
            <td>:</td>
            <td>
                <?php if ($c == 0) {
                    echo "Data Belum Di Validasi";
                } else {
                    echo "Data Sudah Di Validasi";
                } ?>
            </td>
        </tr>
    </table>
    <table width=" 100%" border="1" style="border-collapse: collapse;">
        <thead>
            <tr>
                <th rowspan="2">No.</th>
                <th rowspan="2">Nama</th>
                <th colspan="3">Keternagan</th>
                <!-- <th>Miskin</th>
                <th>Sabil</th> -->
                <th rowspan="2">Status</th>
            </tr>
            <tr>
                <th>Fakir</th>
                <th>Miskin</th>
                <th>Sabil</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $x = 1;
            foreach ($data_penduduk->result() as $row) { ?>
                <tr>
                    <td scope="row" style="text-align: center;"><?= $x++; ?></td>
                    <td><?= $row->nama_penerima ?></td>
                    <td><?php if ($row->id_ket == 1) {
                            echo "<center>x</center>";
                        } else {
                            echo "";
                        } ?>
                    </td>
                    <td><?php if ($row->id_ket == 2) {
                            echo "<center>x</center>";
                        } else {
                            echo "";
                        } ?>
                    </td>
                    <td><?php if ($row->id_ket == 3) {
                            echo "<center>x</center>";
                        } else {
                            echo "";
                        } ?>
                    </td>
                    <td>
                        <?php
                        if ($row->status_penerima == 0) {
                            echo "Aktif";
                        } else {
                            echo "Nonaktif";
                        }
                        ?>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
    <?php $total = 0;
    foreach ($count->result() as $row) {
        $total += $row->jumlah;
    } ?>
    <table style="margin-top: 10px; border: bottom 1px;">
        <?php
        foreach ($count->result() as $row) { ?>
            <tr>
                <td><?= $row->nama_ket ?></td>
                <td>:</td>
                <td style="text-align: right;"><?= $row->jumlah ?></td>
            </tr>

        <?php }
        ?>
    </table>
    <table style="border: bottom 1px;">
        <tr>
            <td colspan="3"><strong>
                    <hr>
                </strong></td>

        </tr>
        <tr>
            <td><b>TOTAL</b></td>
            <td><b>:</b></td>
            <td><b><?= $total ?></b></td>
        </tr>
    </table>

    <table width="100%" style="margin-top: 5%;">
        <tr>
            <td>
                <div align="center">Ketua Panitia </div>
            </td>
            <td>
                <div align="center"></div>
            </td>
            <td>
                <div align="center">Sekretaris</div>
            </td>
        </tr>
        <tr>
            <td height="57">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <div align="center"><strong>(Moch. Firdi Widiansyah)</strong></div>
            </td>
            <td>
                <div align="center"></div>
            </td>
            <td>
                <div align="center"><strong>(Moch. Firman Firdaus)</strong></div>
            </td>
        </tr>
    </table>
</body>

</html>