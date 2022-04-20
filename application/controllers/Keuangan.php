<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Keuangan extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3 && $this->session->userdata('level') != 4) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        $this->load->model('M_keuangan', 'keuangan');
    }


    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Keuangan',
            'conten' => 'conten/keuangan'
        ];
        $this->load->view('template/conten', $data);
    }

    public function donatur()
    {
        $akses = $this->session->userdata('level');
        if ($akses != 7) {
            $get_donate = $this->keuangan->data_donatur();
        } else {
            $get_donate = $this->keuangan->get_filter_data($this->session->userdata('id'));
        }

        $data = [
            'akses' => $this->session->userdata('level'),
            'id' => $this->session->userdata('id'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Data Donatur',
            'conten' => 'conten/donatur',
            'get_data' => $get_donate

        ];
        $this->load->view('template/conten', $data);
    }
}
