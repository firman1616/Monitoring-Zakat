<?php
class M_master extends CI_Model
{
  public function user_petugas()
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
    WHERE a.level != 7');
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

  public function jumlah_user_petugas()
  {
    return $this->db->query("SELECT * FROM `tbl_user_petugas` WHERE level != 7")->num_rows();
  }

  public function jumlah_user_koor()
  {
    return $this->db->query("SELECT * FROM `tbl_user_petugas` WHERE level = 7")->num_rows();
  }

  public function jumlah_alamat()
  {
    return $this->db->query("SELECT * FROM `tbl_master_alamat`")->num_rows();
  }

  public function jumlah_akses()
  {
    return $this->db->query("SELECT * FROM `tbl_master_akses`")->num_rows();
  }

  public function jumlah_jabatan()
  {
    return $this->db->query("SELECT * FROM `tbl_master_jabatan`")->num_rows();
  }

  public function jumlah_maal()
  {
    return $this->db->query("SELECT * FROM `tbl_master_maal`")->num_rows();
  }

  public function jumlah_penerima()
  {
    return $this->db->query("SELECT * FROM `tbl_master_penerima`")->num_rows();
  }
}
