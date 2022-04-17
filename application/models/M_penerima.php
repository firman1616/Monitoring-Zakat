<?php
class M_penerima extends CI_Model
{

    public function data_penerima()
    {
        return $this->db->query("SELECT
        a.id_penerima,
        a.nama_penerima,
        a.status,
        a.ket_penerima,
        a.koor,
        b.nama_ket,
        c.nama_koor 
    FROM
        `tbl_penerima` as a
    JOIN tbl_master_penerima as b ON a.ket_penerima = b.id_ket
    JOIN tbl_user_koor as c ON a.koor = c.id_user_koor");
    }

    public function filter_penerima($id)
    {
        return $this->db->query("SELECT
        a.id_penerima,
        a.nama_penerima,
        a.status,
        a.ket_penerima,
        a.koor,
        b.nama_ket,
        c.nama_koor 
    FROM
        `tbl_penerima` as a
    JOIN tbl_master_penerima as b ON a.ket_penerima = b.id_ket
    JOIN tbl_user_koor as c ON a.koor = c.id_user_koor
		WHERE koor = $id");
    }
}
