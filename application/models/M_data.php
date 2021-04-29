<?php
class M_data extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  function get_data($table)
  {
    return $this->db->get($table);
  }
  function get_data_by_id($table, $where)
  {
    return $this->db->get_where($table, $where);
  }
  function simpan_data($table, $data)
  {
    $this->db->insert($table, $data);
  }
  function update_data($table, $data, $where)
  {
    $this->db->update($table, $data, $where);
  }
  function hapus_data($table, $where)
  {
    $this->db->delete($table, $where);
  }

  public function fitrah()
  {
    return $this->db->query("SELECT *, a.id_user_petugas, a.nama_petugas FROM tbl_zakat_fitrah
    LEFT JOIN tbl_user_petugas as a ON petugas = a.id_user_petugas
    ");
  }

  public function maal()
  {
    return $this->db->query("SELECT
      a.id_zakat_maal,
      a.nama_pemberi_maal,
      a.kategori_zakat,
      a.nominal_zakat,
      a.alamat,
      a.tanggal,
      a.petugas1,
      a.petugas2,
      a.keterangan,
      b.id_master_maal,
      b.nama_maal,
      c.id_user_petugas,
      c.nama_petugas,
      d.id_user_koor,
      d.nama_koor 
    FROM
      `tbl_zakat_maal` AS a
      LEFT JOIN tbl_master_maal AS b ON b.id_master_maal = a.kategori_zakat
      LEFT JOIN tbl_user_petugas AS c ON c.id_user_petugas = a.petugas1
      LEFT JOIN tbl_user_koor AS d ON d.id_user_koor = a.petugas2");
  }

  public function user_petugas()
  {
    return $this->db->query("SELECT *, b.id_master_jabatan, b.nama_jabatan FROM `tbl_user_petugas`
    LEFT JOIN tbl_master_jabatan as b ON `level` = b.id_master_jabatan");
  }

  public function user_koor()
  {
    return $this->db->query("SELECT
    *,
    a.id_master_jabatan,
    a.nama_jabatan,
    b.id_master_alamat,
    b.nama_master_alamat 
  FROM
    `tbl_user_koor`
    LEFT JOIN tbl_master_jabatan AS a ON `level` = a.id_master_jabatan
    LEFT JOIN tbl_master_alamat AS b ON alamat_koor = b.id_master_alamat");
  }

  public function penerima_zakat()
  {
    return $this->db->query("SELECT
    *,
    a.id_ket,
    a.nama_ket,
    b.id_user_koor,
    b.nama_koor 
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_master_penerima AS a ON ket_penerima = a.id_ket
    LEFT JOIN tbl_user_koor AS b ON koor = id_user_koor");
  }

  public function total_beras()
  {
    return $this->db->query("SELECT SUM(total_beras) AS total FROM tbl_zakat_fitrah");
  }

  public function terjual()
  {
    return $this->db->query("SELECT SUM(uang) AS uang FROM tbl_zakat_fitrah");
  }

  public function total_maal()
  {
    return $this->db->query("SELECT SUM(nominal_zakat) AS nominal FROM tbl_zakat_maal");
  }

  public function jumlah_penerima()
  {
    return $this->db->query("SELECT * FROM `tbl_penerima`")->num_rows();
  }

  public function penerima_zakat_koor($id)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
  WHERE
    koor = $id");
  }

  public function lap_penerima_zakat($rt)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket,
    d.id_master_alamat,
    d.nama_master_alamat
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
    LEFT JOIN tbl_master_alamat as d ON b.alamat_koor = d.id_master_alamat 
  WHERE
    b.alamat_koor = $rt");
  }

  public function berat($rt)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket,
    d.id_master_alamat,
    d.nama_master_alamat
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
    LEFT JOIN tbl_master_alamat as d ON b.alamat_koor = d.id_master_alamat 
  WHERE
    b.alamat_koor = $rt AND ket_penerima = 1 ")->num_rows();
  }

  public function ringan($rt)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket,
    d.id_master_alamat,
    d.nama_master_alamat
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
    LEFT JOIN tbl_master_alamat as d ON b.alamat_koor = d.id_master_alamat 
  WHERE
    b.alamat_koor = $rt AND ket_penerima = 2 ")->num_rows();
  }

  public function sabilillah($rt)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket,
    d.id_master_alamat,
    d.nama_master_alamat
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
    LEFT JOIN tbl_master_alamat as d ON b.alamat_koor = d.id_master_alamat 
  WHERE
    b.alamat_koor = $rt AND ket_penerima = 3 ")->num_rows();
  }

  public function penerima_zakat_rt($id)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
  WHERE
    koor = $id")->num_rows();
  }

  public function penerima_zakat_rt_berat($id)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
  WHERE
    koor = $id AND ket_penerima = 1")->num_rows();
  }

  public function penerima_zakat_rt_ringan($id)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
  WHERE
    koor = $id AND ket_penerima = 2")->num_rows();
  }

  public function penerima_zakat_rt_sabilillah($id)
  {
    return $this->db->query("SELECT
    *,
    b.id_user_koor,
    b.nama_koor,
    b.alamat_koor,
    c.id_ket,
    c.nama_ket
  FROM
    `tbl_penerima`
    LEFT JOIN tbl_user_koor AS b ON koor = b.id_user_koor
    LEFT JOIN tbl_master_penerima as c ON ket_penerima = c.id_ket 
  WHERE
    koor = $id AND ket_penerima = 3")->num_rows();
  }

  public function total_zakat_maal()
  {
    return $this->db->query("SELECT SUM(nominal_zakat) as total FROM tbl_zakat_maal WHERE kategori_zakat = 1");
  }

  public function total_ps()
  {
    return $this->db->query("SELECT SUM(nominal_zakat) as total FROM tbl_zakat_maal WHERE kategori_zakat = 2");
  }

  public function total_is()
  {
    return $this->db->query("SELECT SUM(nominal_zakat) as total FROM tbl_zakat_maal WHERE kategori_zakat = 3");
  }

  public function total_fidyah()
  {
    return $this->db->query("SELECT SUM(nominal_zakat) as total FROM tbl_zakat_maal WHERE kategori_zakat = 4");
  }

  public function jumlah_berat()
  {
    return $this->db->query("SELECT * FROM tbl_penerima WHERE ket_penerima = 1")->num_rows();
  }

  public function jumlah_ringan()
  {
    return $this->db->query("SELECT * FROM tbl_penerima WHERE ket_penerima = 2")->num_rows();
  }

  public function jumlah_sabilillah()
  {
    return $this->db->query("SELECT * FROM tbl_penerima WHERE ket_penerima = 3")->num_rows();
  }

  public function jumlah_donatur()
  {
    return $this->db->query("SELECT * FROM tbl_donatur")->num_rows();
  }

}
