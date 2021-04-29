<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
    public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 3) {
			redirect(base_url("login"));
		}
		//	$this->load->library('Pdf');
	}

	
	public function index()
	{
        $data = [
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Dashboard',
            'conten'    => 'conten_petugas/dashboard',
			'total_beras' => $this->m_data->total_beras(),
			'terjual'	=> $this->m_data->terjual(),
			'total_maal' => $this->m_data->total_maal(),
			'jumlah_penerima' => $this->m_data->jumlah_penerima(),
			'jumlah_berat'	=> $this->m_data->jumlah_berat(),
			'jumlah_ringan'	=> $this->m_data->jumlah_ringan(),
			'jumlah_sabilillah'	=> $this->m_data->jumlah_sabilillah(),
			'jumlah_donatur' => $this->m_data->jumlah_donatur()
        ];
		$this->load->view('template_petugas/conten',$data);
	}
}
