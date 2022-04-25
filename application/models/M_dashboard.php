<?php
class M_dashboard extends CI_Model
{
    public function jumlah_donatur()
    {
        return $this->db->query("SELECT SUM(nominal) as total FROM tbl_donatur WHERE YEAR(validation) = YEAR(CURDATE()) AND `status` = 1")->row();
    }

    public function count_donatur()
    {
        return $this->db->query("SELECT COUNT(id_donatur) as jumlah FROM tbl_donatur WHERE YEAR(validation) = YEAR(CURDATE()) AND `status` = 1")->row();
    }

    public function jumlah_beras()
    {
        return $this->db->query("SELECT SUM(total_beras) as total_beras FROM tbl_zakat_fitrah WHERE YEAR(tanggal) = YEAR(CURDATE())")->row();
    }

    public function jumlah_uang_beras()
    {
        return $this->db->query("SELECT SUM(uang) as total_uang_fitrah FROM tbl_zakat_fitrah WHERE YEAR(tanggal) = YEAR(CURDATE())")->row();
    }

    public function count_fitrah()
    {
        return $this->db->query("SELECT * FROM tbl_zakat_fitrah WHERE YEAR(tanggal) = YEAR(CURDATE())")->num_rows();
    }

    public function total_all_maal()
    {
        return $this->db->query("SELECT SUM(nominal_zakat) as nominal FROM tbl_zakat_maal WHERE YEAR(tanggal) = YEAR(CURDATE())")->row();
    }

    public function total_maal()
    {
        return $this->db->query("SELECT SUM(nominal_zakat) as maal FROM tbl_zakat_maal WHERE YEAR(tanggal) = YEAR(CURDATE()) AND kategori_zakat = 1")->row();
    }

    public function total_ps()
    {
        return $this->db->query("SELECT SUM(nominal_zakat) as ps FROM tbl_zakat_maal WHERE YEAR(tanggal) = YEAR(CURDATE()) AND kategori_zakat = 2")->row();
    }

    public function total_is()
    {
        return $this->db->query("SELECT SUM(nominal_zakat) as infaq FROM tbl_zakat_maal WHERE YEAR(tanggal) = YEAR(CURDATE()) AND kategori_zakat = 3")->row();
    }

    public function total_fid()
    {
        return $this->db->query("SELECT SUM(nominal_zakat) as fid FROM tbl_zakat_maal WHERE YEAR(tanggal) = YEAR(CURDATE()) AND kategori_zakat = 4")->row();
    }

    public function penerima_zakat()
    {
        return $this->db->query("SELECT * FROM tbl_penerima")->num_rows();
    }

    public function penerima_fakir()
    {
        return $this->db->query("SELECT * FROM tbl_penerima WHERE ket_penerima = 1")->num_rows();
    }
    public function penerima_miskin()
    {
        return $this->db->query("SELECT * FROM tbl_penerima WHERE ket_penerima = 2")->num_rows();
    }
    public function penerima_sabilillah()
    {
        return $this->db->query("SELECT * FROM tbl_penerima WHERE ket_penerima = 3")->num_rows();
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
    WHERE a.status_penerima = 0 AND a.koor = '$id'
    GROUP BY b.nama_ket");
    }

    public function bar_fitrah()
    {
        return $this->db->query("SELECT YEAR(tanggal) as tahun, SUM(berat_beras) as total FROM `tbl_zakat_fitrah` GROUP BY YEAR(tanggal)")->result();
    }
}
