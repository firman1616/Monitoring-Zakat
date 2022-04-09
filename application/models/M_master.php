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
    JOIN tbl_master_akses as c on c.id_akses = a.level');
  }

  public function user_koor()
  {
    return $this->db->query('SELECT
      a.id_user_koor,
      a.nama_koor,
      a.panggilan_koor,
      a.username,
      a.password,
      a.level,
      a.alamat_koor,
      b.nama_master_alamat AS koor_alamat,
      c.nama_akses 
    FROM
      tbl_user_koor AS a
      JOIN tbl_master_alamat AS b ON b.id_master_alamat = a.alamat_koor
      JOIN tbl_master_akses AS c ON c.id_akses = a.LEVEL');
  }
}
