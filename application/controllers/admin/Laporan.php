<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {
    public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {
			redirect(base_url("login"));
		}
        $this->load->library('pdf');
	}

	
	public function index()
	{
        $data = [
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Laporan',
            'conten'    => 'conten/laporan',
            'total_beras' => $this->m_data->total_beras(),
            'total_maal' => $this->m_data->total_maal(),
            'wilayah'   => $this->m_data->get_data('tbl_master_alamat')
        ];
		$this->load->view('template/conten',$data);
	}

    public function laporan_fitrah()
    {
        // $title_page     = 'Cetak Laporan Zakat Fitrah';
        $data = [
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Cetak Laporan Zakat Fitrah',
            'fitrah'    => $this->m_data->get_data('tbl_zakat_fitrah'),
            'total_beras' => $this->m_data->total_beras(),
            'total_uang' => $this->m_data->terjual()
        ];
		$this->load->view('conten/laporan_zakat_fitrah',$data);
    }

    public function laporan_maal()
    {
        $data = [
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Cetak Laporan Zakat Maal',
            'maal'    => $this->m_data->maal(),
            'total_zakat_maal' => $this->m_data->total_zakat_maal(),
            'total_ps'=> $this->m_data->total_ps(),
            'total_is'=> $this->m_data->total_is(),
            'total_fidyah' => $this->m_data->total_fidyah()
        ];
		$this->load->view('conten/laporan_zakat_maal',$data);
    }

    public function laporan_penerima_rt()
    {
        $rt = $this->input->post('rt');
        $data = [
            'name'		=> $this->session->userdata('nama'),
            'title'     => 'Cetak Laporan Penerima',
            'get_data'  => $this->m_data->lap_penerima_zakat($rt),
            'berat'     => $this->m_data->berat($rt),
            'ringan'     => $this->m_data->ringan($rt),
            'sabilillah'     => $this->m_data->sabilillah($rt),
        ];

        $this->load->view('conten/laporan_penerima',$data);
    }
}
