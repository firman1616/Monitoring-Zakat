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
}
