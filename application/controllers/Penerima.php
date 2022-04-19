<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penerima extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 7 && $this->session->userdata('level') != 3) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        $this->load->model('M_penerima', 'penerima');
    }


    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'id_petugas' => $this->session->userdata('id'),
            'title' => 'Data Penerima Zakat',
            'conten' => 'conten/penerima_zakat',
            'get_data' => $this->penerima->data_penerima(),
            'get_filter_data' => $this->penerima->filter_penerima($this->session->userdata('id')),
            'kategori' => $this->m_data->get_data('tbl_master_penerima'),
            'get_koor' => $this->penerima->user_koor(),
            'headder_css' => array(
                'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                'assets/js/alert-penerima.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_data_penerima()
    {
        $table = 'tbl_penerima';
        $akses = $this->session->userdata('level');

        if ($akses != 7) {
            $simpan = $this->input->post('koor');
        } else {
            $simpan = $this->session->userdata('id');
        }

        $data = [
            'nama_penerima' => $this->input->post('nama_penerima'),
            'ket_penerima' => $this->input->post('kategori'),
            'koor' => $simpan,
        ];
        $this->m_data->simpan_data($table, $data);
        $this->session->set_flashdata('penerima', 'Disimpan');
        redirect('Penerima');
    }

    public function update_data_penerima($id)
    {
        $table = 'tbl_penerima';
        $akses = $this->session->userdata('level');
        if ($akses != 7) {
            $simpan = $this->input->post('koor');
        } else {
            $simpan = $this->session->userdata('id');
        }
        $data = [
            'nama_penerima' => $this->input->post('nama_penerima'),
            'ket_penerima' => $this->input->post('kategori'),
            'koor' => $simpan,
        ];
        $where = ['id_penerima' => $id];
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('penerima', 'Diubah');
        redirect('Penerima');
    }

    public function hapus_data_penerima($id)
    {
        $table = 'tbl_penerima';
        $where = ['id_penerima' => $id];
        $this->m_data->hapus_data($table, $where);
        $this->session->set_flashdata('penerima', 'Dihapus');
        redirect('Penerima');
    }

    public function update_status_terima($id)
    {
        $table = 'tbl_penerima';
        $data = array('status' => '1');
        $where = array('id_penerima' => $id);
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('validasi', 'Diberikan');
        redirect('Penerima');
    }

    public function update_status_kembali($id)
    {
        $table = 'tbl_penerima';
        $data = array('status' => '0');
        $where = array('id_penerima' => $id);
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('validasi', 'Dibatalkan');
        redirect('Penerima');
    }
}
