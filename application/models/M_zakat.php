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
        JOIN tbl_user_petugas as c ON a.petugas = c.id_user_petugas");
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
        ");
    }
}
