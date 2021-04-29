<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
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
            'title'     => 'Dashboard',
            'conten'    => 'conten_koor/dashboard',
			'total_beras' => $this->m_data->total_beras(),
			'terjual'	=> $this->m_data->terjual(),
			'total_maal' => $this->m_data->total_maal(),
			'rt'		=> $this->M_data->penerima_zakat_rt($this->session->userdata('id_koor')),
			'rt_berat'		=> $this->M_data->penerima_zakat_rt_berat($this->session->userdata('id_koor')),
			'rt_ringan'		=> $this->M_data->penerima_zakat_rt_ringan($this->session->userdata('id_koor')),
			'rt_sabilillah'		=> $this->M_data->penerima_zakat_rt_sabilillah($this->session->userdata('id_koor')),
			'jumlah_donatur' => $this->m_data->jumlah_donatur()

        ];
		$this->load->view('template_koor/conten',$data);
	}
}
