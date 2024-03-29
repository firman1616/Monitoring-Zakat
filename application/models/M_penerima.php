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
        a.status_penerima,
        a.validation_data,
        a.date_validation,
        b.nama_ket,
        c.nama_petugas 
    FROM
        `tbl_penerima` as a
    JOIN tbl_master_penerima as b ON a.ket_penerima = b.id_ket
    JOIN tbl_user_petugas as c ON a.koor = c.id_user_petugas");
    }

    public function filter_penerima($id)
    {
        return $this->db->query("SELECT
        a.id_penerima,
        a.nama_penerima,
        a.status,
        a.ket_penerima,
        a.koor,
        a.status_penerima,
        a.validation_data,
        a.date_validation,
        b.nama_ket,
        c.nama_petugas 
    FROM
        `tbl_penerima` as a
    JOIN tbl_master_penerima as b ON a.ket_penerima = b.id_ket
    JOIN tbl_user_petugas as c ON a.koor = c.id_user_petugas
	WHERE koor = $id");
    }

    public function user_koor()
    {
        return $this->db->query('SELECT
            a.id_user_petugas,
            a.nama_petugas,
            a.username,
            a.password,
            a.keterangan,
            a.level,
            a.alamat_petugas,
            b.nama_master_alamat as petugas_alamat,
            c.nama_akses 
        FROM
            tbl_user_petugas as a
        JOIN tbl_master_alamat as b on b.id_master_alamat = a.alamat_petugas
        JOIN tbl_master_akses as c on c.id_akses = a.level
        WHERE a.level = 7');
    }

    function update_validation_data($table, $data)
    {
        $this->db->update($table, $data);
    }

    public function single_validation($status, $valid_date, $koor)
    {
        return $this->db->query("UPDATE tbl_penerima SET validation_data = '$status', date_validation = '$valid_date' WHERE koor = '$koor'");
    }

    public function date_validate()
    {
        return $this->db->query("SELECT validation_data, date_validation FROM tbl_penerima LIMIT 1");
    }

    public function print_data($id)
    {
        return $this->db->query("SELECT
            a.seq_no,
            a.nama_penerima,
            a.status_penerima,
            a.validation_data,
            b.id_ket,
            b.nama_ket,
            c.nama_petugas,
            c.alamat_petugas,
            d.nama_master_alamat 
        FROM
            tbl_penerima as a
        JOIN tbl_master_penerima as b ON a.ket_penerima = b.id_ket
        JOIN tbl_user_petugas as c ON a.koor = c.id_user_petugas
        JOIN tbl_master_alamat as d ON c.alamat_petugas = d.id_master_alamat
        WHERE a.status_penerima = 0 AND c.alamat_petugas = $id
        ORDER BY a.seq_no asc
            ");
    }

    public function count_kategori($id)
    {
        return $this->db->query("SELECT
            b.nama_ket,
            COUNT(b.id_ket) as jumlah
        FROM
            tbl_penerima as a
        JOIN tbl_master_penerima as b ON a.ket_penerima = b.id_ket
        JOIN tbl_user_petugas as c ON a.koor = c.id_user_petugas
        JOIN tbl_master_alamat as d ON c.alamat_petugas = d.id_master_alamat
        WHERE a.status_penerima = 0 AND c.alamat_petugas = $id
        GROUP BY b.nama_ket");
    }
}
