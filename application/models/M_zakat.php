<?php
class M_zakat extends CI_Model
{
    public function tampil_fitrah()
    {
        return $this->db->query("SELECT
        a.id_zakat_fitrah,
        a.nama_pemberi_zakat_fitrah,
        a.besaran_jiwa,
        a.berat_beras,
        a.total_beras,
        a.uang,
        a.keterangan,
        a.tanggal,
        a.alamat_lainnya,
        b.nama_master_alamat,
        c.nama_petugas
        FROM tbl_zakat_fitrah as a
        JOIN tbl_master_alamat as b ON a.alamat = b.id_master_alamat
        JOIN tbl_user_petugas as c ON a.petugas = c.id_user_petugas
        ORDER BY a.tanggal DESC");
    }

    public function tampil_fitrah_filter()
    {
        return $this->db->query("SELECT
        a.id_zakat_fitrah,
        a.nama_pemberi_zakat_fitrah,
        a.besaran_jiwa,
        a.berat_beras,
        a.total_beras, 
        a.uang,
        a.keterangan,
        a.tanggal,
        a.alamat_lainnya,
        b.nama_master_alamat,
        c.nama_petugas
        FROM tbl_zakat_fitrah as a
        JOIN tbl_master_alamat as b ON a.alamat = b.id_master_alamat
        JOIN tbl_user_petugas as c ON a.petugas = c.id_user_petugas
        WHERE YEAR(a.tanggal) = YEAR(CURDATE())
        ORDER BY a.tanggal DESC
        ");
    }

    public function jumlah_fitrah()
    {
        return $this->db->query("SELECT * FROM `tbl_zakat_fitrah`")->num_rows();
    }

    public function tampil_maal()
    {
        return $this->db->query("SELECT
        a.id_zakat_maal,
        a.nama_pemberi_maal,
        a.nominal_zakat, 
        a.alamat_lainnya,
        a.tanggal,
        a.petugas2,
        a.keterangan,
        b.nama_maal,
        c.nama_master_alamat,
        d.nama_petugas as petugas1
    FROM
        tbl_zakat_maal AS a
        JOIN tbl_master_maal as b ON a.kategori_zakat = b.id_master_maal
        JOIN tbl_master_alamat as c ON a.alamat = c.id_master_alamat
        JOIN tbl_user_petugas as d ON a.petugas1 = d.id_user_petugas
        ORDER BY a.tanggal DESC");
    }

    public function tampil_maal_filter()
    {
        return $this->db->query("SELECT
        a.id_zakat_maal,
        a.nama_pemberi_maal,
        a.nominal_zakat, 
        a.alamat_lainnya,
        a.tanggal,
        a.petugas2,
        a.keterangan,
        b.nama_maal,
        c.nama_master_alamat,
        d.nama_petugas as petugas1
    FROM
        `tbl_zakat_maal` AS a
        JOIN tbl_master_maal as b ON a.kategori_zakat = b.id_master_maal
        JOIN tbl_master_alamat as c ON a.alamat = c.id_master_alamat
        JOIN tbl_user_petugas as d ON a.petugas1 = d.id_user_petugas
        WHERE YEAR(a.tanggal) = YEAR(CURDATE())
        ORDER BY a.tanggal DESC
        ");
    }

    public function jumlah_maal()
    {
        return $this->db->query("SELECT * FROM `tbl_zakat_maal`")->num_rows();
    }

    public function user_koor()
    {
        return $this->db->query("SELECT id_user_petugas, nama_petugas FROM `tbl_user_petugas` WHERE level = 7");
    }
}
