<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Donatur extends CI_Controller {
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
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Data Donatur',
            'conten'    => 'conten_koor/donatur',
			'donatur'	=> $this->m_data->get_data('tbl_donatur')
        ];
		$this->load->view('template_koor/conten',$data);
	}

	public function tambah_donatur()
	{
		$date = date('Y-m-d H:i:s');
		$petugas = $this->session->userdata('id');
		$data = array(
			'nama_donatur' 		=> $this->input->post('nama_donatur'),
			'alamat_donatur' 	=> $this->input->post('alamat_donatur'),
			'nominal'			=> $this->input->post('nominal'),
			'petugas_penerima'	=> $petugas,
			'validation' 	=> $date
		);
		$table = 'tbl_donatur';
		$this->M_data->simpan_data($table, $data); //akses model untuk menyimpan ke database
		redirect('koor/Donatur');
	}

}
