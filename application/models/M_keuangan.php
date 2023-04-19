<?php
class M_keuangan extends CI_Model
{

    public function data_donatur()
    {
        return $this->db->query("SELECT
            a.id_donatur,
            a.nama_donatur,
            a.alamat_donatur,
            a.alamat_lainnya,
            a.nominal,
            a.status,
            a.validation,
            b.nama_petugas,
            c.nama_master_alamat 
        FROM
            `tbl_donatur` AS a
        JOIN tbl_user_petugas AS b ON a.petugas_penerima = b.id_user_petugas
        JOIN tbl_master_alamat as c on c.id_master_alamat = a.alamat_donatur");
    }

    public function get_filter_data($id)
    {
        return $this->db->query("SELECT
            a.id_donatur,
            a.nama_donatur,
            a.alamat_donatur,
            a.alamat_lainnya,
            a.nominal,
            a.status,
            a.validation,
            b.nama_petugas,
            c.nama_master_alamat 
        FROM
            `tbl_donatur` AS a
        JOIN tbl_user_petugas AS b ON a.petugas_penerima = b.id_user_petugas
        JOIN tbl_master_alamat as c on c.id_master_alamat = a.alamat_donatur
        WHERE a.petugas_penerima = $id");
    }

    public function jumlah_donatur()
    {
        return $this->db->query("SELECT SUM(nominal) as jumlah FROM `tbl_donatur` WHERE status = 1");
    }

    public function jumlah_uang_beras()
    {
        return $this->db->query("SELECT SUM(uang) as total_uang_fitrah FROM tbl_zakat_fitrah WHERE YEAR(tanggal) = YEAR(CURDATE())")->row();
    }

    public function saldo_maal_fid()
    {
        return $this->db->query("SELECT SUM(nominal_zakat) as total_maal_fid FROM `tbl_zakat_maal` WHERE kategori_zakat IN (1,4) AND YEAR(tanggal) = YEAR(CURDATE())")->row();
    }

    public function saldo_is_ps()
    {
        return $this->db->query("SELECT SUM(nominal_zakat) as total_is_ps FROM `tbl_zakat_maal` WHERE kategori_zakat IN (2,3) AND YEAR(tanggal) = YEAR(CURDATE())")->row();
    }
}
