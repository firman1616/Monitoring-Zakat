<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penerima extends CI_Controller {
    public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 5) {
			redirect(base_url("login"));
		}
		//	$this->load->library('Pdf');
	}

	
	public function index()
	{
        $data = [
			'id_koor'	=> $this->session->userdata('id_koor'),
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Data Penerima Zakat',
            'conten'    => 'conten_koor/data_penerima',
            'penerima'  => $this->m_data->penerima_zakat(),
            'master'    => $this->m_data->get_data('tbl_master_penerima'),
            'koor'      => $this->m_data->get_data('tbl_user_koor'),
			'tampil'	=> $this->M_data->penerima_zakat_koor($this->session->userdata('id_koor')),
        ];
		$this->load->view('template_koor/conten',$data);
	}

	public function tambah_data()
	{
		$table = 'tbl_penerima';
		$data = array(
			'nama_penerima'		=> $this->input->post('nama_penerima'),
			'ket_penerima'		=> $this->input->post('ket_penerima'),
			'koor'				=> $this->session->userdata('id_koor'),
		);
		$this->m_data->simpan_data($table,$data);
		redirect('koor/Penerima');
	}

	public function edit_data($id)
	{
		$table = 'tbl_penerima';
		$data = array(
			'nama_penerima'		=> $this->input->post('nama_penerima'),
			'ket_penerima'		=> $this->input->post('ket_penerima'),
			'koor'				=> $this->session->userdata('id_koor'),
		);
		$where = array('id_penerima' => $id);
		$this->m_data->update_data($table,$data,$where);
		redirect('koor/Penerima');
	}

	public function hapus_data($id)
	{
		$table = 'tbl_penerima';
		$where =array('id_penerima' => $id);
		$this->m_data->hapus_data($table,$where);
		redirect('koor/Penerima');
	}

	public function update_status($id)
	{
		$table = 'tbl_penerima';
		$data = array('status' => '1');
		$where = array('id_penerima' => $id);
		$this->m_data->update_data($table,$data,$where);
		redirect('koor/Penerima');
	}

	public function update_status2($id)
	{
		$table = 'tbl_penerima';
		$data = array('status' => '0');
		$where = array('id_penerima' => $id);
		$this->m_data->update_data($table,$data,$where);
		redirect('koor/Penerima');
	}
}
