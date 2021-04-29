<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Zakat extends CI_Controller {
    public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {
			redirect(base_url("login"));
		}
		//	$this->load->library('Pdf');
		$this->load->library('PdfGenerator');
	}

	
	public function index()
	{
        $data = [
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Zakat Fitrah',
            'conten'    => 'conten/zakat_fitrah',
			'fitrah'	=> $this->m_data->fitrah(),
			// 'header_css'=> array(
			// 	'assets/template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css',
			// ),
			'footer_js' => array(
				// 'assetsp/template/bower_components/datatables.net/js/jquery.dataTables.min.js',
				// 'assets/template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js',
				// 'assets/js/dataTable.js',
				'assets/js/zakat.js'
			)
        ];
		$this->load->view('template/conten',$data);
	}

	public function tambah_fitrah()
	{
		$table = 'tbl_zakat_fitrah';
		$id_petugas		= $this->session->userdata('id');
		$date = date('Y-m-d H:i:s');
		$post = $this->input->post();
		$data = array(
			'nama_pemberi_zakat_fitrah' => $post['nama_zakat'],
			'besaran_jiwa'		=> $post['besaran_jiwa'],
			'berat_beras'		=> $post['satuan_beras'],
			'total_beras'		=> floatval($post['satuan_beras']) * floatval($post['besaran_jiwa']), 
			// kebalik atuh bang ahahhah
			'uang'				=> $post['uang'],
			'alamat'			=> $post['alamat'],
			'keterangan'		=> $post['keterangan'],
			'tanggal'			=> $date,
			'petugas'			=> $id_petugas
			// intval($post['satuan_beras']) * intval($post['besaran_jiwa'])
			// $post['total']
		);

		//die(var_dump($data));
		$this->m_data->simpan_data($table,$data);
		redirect('admin/Zakat');
	}

	public function v_edit($id)
	{
		$data = [
				'name'		=> $this->session->userdata('nama'),
				'title'     => 'Edit Zakat Fitrah',
				'conten'    => 'conten/edit_fitrah',
				'get_data'	=> $this->m_data->get_data_by_id('tbl_zakat_fitrah',array('id_zakat_fitrah' => $id)),
				// 'header_css'=> array(
				// 	'assets/template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css',
				// ),
				'footer_js' => array(
					// 'assetsp/template/bower_components/datatables.net/js/jquery.dataTables.min.js',
					// 'assets/template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js',
					// 'assets/js/dataTable.js',
					'assets/js/zakat.js'
				)
		];
		$this->load->view('template/conten',$data);
	}

	public function edit_fitrah($id)
	{
		$table = 'tbl_zakat_fitrah';
		$id_petugas		= $this->session->userdata('id');
		$date = date('Y-m-d H:i:s');
		$post = $this->input->post();
		$data = array(
			'nama_pemberi_zakat_fitrah' => $post['nama_zakat'],
			'besaran_jiwa'		=> $post['besaran_jiwa'],
			'berat_beras'		=> $post['satuan_beras'],
			'total_beras'		=> floatval($post['satuan_beras']) * floatval($post['besaran_jiwa']), 
			'uang'				=> $post['uang'],
			'alamat'			=> $post['alamat'],
			'keterangan'		=> $post['keterangan'],
			'tanggal'			=> $date,
			'petugas'			=> $id_petugas
		);
		$where = array('id_zakat_fitrah' => $id);
		$this->m_data->update_data($table,$data,$where);
		redirect('admin/Zakat');
	}

	public function hapus_fitrah($id)
	{
		$table = 'tbl_zakat_fitrah';
		$where = array('id_zakat_fitrah' => $id);
		$this->m_data->hapus_data($table,$where);
		redirect('admin/Zakat');
	}

	public function Maal()
	{
		$data = [
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Zakat Maal',
            'conten'    => 'conten/zakat_maal',
			'maal'	=> $this->m_data->maal(),
			'kategori_maal' => $this->m_data->get_data('tbl_master_maal'),
			'petugas2'	=> $this->m_data->get_data('tbl_user_koor'),
			// 'header_css'=> array(
			// 	'assets/template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css',
			// ),
			'footer_js' => array(
				// 'assetsp/template/bower_components/datatables.net/js/jquery.dataTables.min.js',
				// 'assets/template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js',
				// 'assets/js/dataTable.js',
				'assets/js/zakat.js'
			)
        ];
		$this->load->view('template/conten',$data);
	}

	public function tambah_maal()
	{
		$id_petugas		= $this->session->userdata('id');
		$date = date('Y-m-d H:i:s');
		$table = 'tbl_zakat_maal';
		$data = array(
			'nama_pemberi_maal'				=> $this->input->post('nama_zakat'),
			'kategori_zakat'				=> $this->input->post('kategori'),
			'nominal_zakat'					=> $this->input->post('nominal_zakat'),
			'alamat'						=> $this->input->post('alamat'),
			'tanggal'						=> $date,
			'petugas1'						=> $id_petugas,
			'petugas2'						=> $this->input->post('petugas2'),
			'keterangan'					=> $this->input->post('keterangan')
		);
		$this->m_data->simpan_data($table,$data);
		redirect('admin/Zakat/Maal');
	}

	public function edit_maal($id)
	{
		$id_petugas		= $this->session->userdata('id');
		$date = date('Y-m-d H:i:s');
		$table = 'tbl_zakat_maal';
		$data = array(
			'nama_pemberi_maal'				=> $this->input->post('nama_zakat'),
			'kategori_zakat'				=> $this->input->post('kategori'),
			'nominal_zakat'					=> $this->input->post('nominal_zakat'),
			'alamat'						=> $this->input->post('alamat'),
			'tanggal'						=> $date,
			'petugas1'						=> $id_petugas,
			'petugas2'						=> $this->input->post('petugas2'),
			'keterangan'					=> $this->input->post('keterangan')
		);
		$where = array('id_zakat_maal' => $id);
		$this->m_data->update_data($table,$data,$where);
		redirect('admin/Zakat/Maal');
	}

	public function hapus_maal($id)
	{
		$table = 'tbl_zakat_maal';
		$where = array('id_zakat_maal' => $id);
		$this->m_data->hapus_data($table,$where);
		redirect('admin/Zakat/Maal');
	}
}

