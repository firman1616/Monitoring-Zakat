<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
    }


    public function index()
    {
        $data = [
            'name' => $this->session->userdata('nama'),
            'title' => 'Dashboard',
            'conten' => 'conten/dashboard'
        ];
        $this->load->view('template/conten', $data);
    }
}
