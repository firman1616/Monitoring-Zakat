<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pembayaran extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 4) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        $this->load->model('M_zakat', 'zakat');
    }


    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Pembayaran Zakat',
            'conten' => 'conten/pembayaran'
        ];
        $this->load->view('template/conten', $data);
    }

    public function zakat_fitrah()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Zakat Fitrah',
            'conten' => 'conten/zakat_fitrah',
            'get_fitrah' => $this->zakat->tampil_fitrah(),
            'get_fitrah_filter' => $this->zakat->tampil_fitrah_filter(),
            'headder_css' => array(
                'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                'assets/js/alert-zakat.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }
}
