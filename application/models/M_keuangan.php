<?php
class M_keuangan extends CI_Model
{

    public function data_donatur()
    {
        return $this->db->query("SELECT
        a.id_donatur,
        a.nama_donatur,
        a.alamat_donatur,
        a.nominal,
        a.status,
        a.validation,
        b.nama_petugas 
    FROM
        `tbl_donatur` as a
    JOIN tbl_user_petugas as b ON a.petugas_penerima = b.id_user_petugas");
    }

    public function get_filter_data($id)
    {
        return $this->db->query("SELECT
            a.id_donatur,
            a.nama_donatur,
            a.alamat_donatur,
            a.nominal,
            a.status,
            a.validation,
            b.nama_petugas 
        FROM
            `tbl_donatur` as a
        JOIN tbl_user_petugas as b ON a.petugas_penerima = b.id_user_petugas
        WHERE a.petugas_penerima = $id ");
    }
}
