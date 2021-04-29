<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penerima extends CI_Controller {
    public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {
			redirect(base_url("login"));
		}
		//	$this->load->library('Pdf');
	}

	
	public function index()
	{
        $data = [
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Data Penerima Zakat',
            'conten'    => 'conten/data_penerima',
            'penerima'  => $this->m_data->penerima_zakat(),
            'master'    => $this->m_data->get_data('tbl_master_penerima'),
            'koor'      => $this->m_data->get_data('tbl_user_koor')
        ];
		$this->load->view('template/conten',$data);
	}

	public function tambah_data()
	{
		$table = 'tbl_penerima';
		$data = array(
			'nama_penerima'		=> $this->input->post('nama_penerima'),
			'ket_penerima'		=> $this->input->post('ket_penerima'),
			'koor'				=> $this->input->post('koor')
		);
		$this->m_data->simpan_data($table,$data);
		redirect('admin/Penerima');
	}

	public function edit_data($id)
	{
		$table = 'tbl_penerima';
		$data = array(
			'nama_penerima'		=> $this->input->post('nama_penerima'),
			'ket_penerima'		=> $this->input->post('ket_penerima'),
			'koor'				=> $this->input->post('koor')
		);
		$where = array('id_penerima' => $id);
		$this->m_data->update_data($table,$data,$where);
		redirect('admin/Penerima');
	}

	public function hapus_data($id)
	{
		$table = 'tbl_penerima';
		$where =array('id_penerima' => $id);
		$this->m_data->hapus_data($table,$where);
		redirect('admin/Penerima');
	}

	public function update_status($id)
	{
		$table = 'tbl_penerima';
		$data = array('status' => '1');
		$where = array('id_penerima' => $id);
		$this->m_data->update_data($table,$data,$where);
		redirect('admin/Penerima');
	}
}
