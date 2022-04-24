<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3 && $this->session->userdata('level') != 4 && $this->session->userdata('level') != 5 && $this->session->userdata('level') != 7) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        $this->load->model('M_dashboard', 'dash');
    }


    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Dashboard',
            'conten' => 'conten/dashboard',
            'jumlah_donatur' => $this->dash->jumlah_donatur(),
            'count_donatur' => $this->dash->count_donatur(),
            'jumlah_beras' => $this->dash->jumlah_beras(),
            'count_fitrah' => $this->dash->count_fitrah(),
            'jumlah_uang_beras' => $this->dash->jumlah_uang_beras(),
            'total_all_maal' => $this->dash->total_all_maal(),
            'total_maal' => $this->dash->total_maal(),
            'total_ps' => $this->dash->total_ps(),
            'total_is' => $this->dash->total_is(),
            'total_fid' => $this->dash->total_fid(),
            'penerima_zakat' => $this->dash->penerima_zakat(),
            'penerima_fakir' => $this->dash->penerima_fakir(),
            'penerima_miskin' => $this->dash->penerima_miskin(),
            'penerima_sabilillah' => $this->dash->penerima_sabilillah(),
            'count_kategori' => $this->dash->count_kategori($this->session->userdata('id')),
        ];
        $this->load->view('template/conten', $data);
    }
}
