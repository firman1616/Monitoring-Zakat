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
        $this->load->library('Pdfgenerator');
        $this->load->model('M_penerima', 'penerima');
    }


    public function index()
    {
        $akses = $this->session->userdata('level');
        if ($akses != 7) {
            $get_data_penerima  = $this->penerima->data_penerima();
        } else {
            $get_data_penerima = $this->penerima->filter_penerima($this->session->userdata('id'));
        }

        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'id_petugas' => $this->session->userdata('id'),
            'title' => 'Data Penerima Zakat',
            'conten' => 'conten/penerima_zakat',
            'get_data' => $get_data_penerima,
            // 'get_filter_data' => $this->penerima->filter_penerima($this->session->userdata('id')),
            'date_valid' => $this->penerima->date_validate(),
            'kategori' => $this->m_data->get_data('tbl_master_penerima'),
            'get_koor' => $this->penerima->user_koor(),
            'get_alamat' => $this->m_data->get_data('tbl_master_alamat'),
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

    public function update_penerima_off($id)
    {
        $table = 'tbl_penerima';
        $data = array('status_penerima' => '1');
        $where = array('id_penerima' => $id);
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('validasi2', 'Dinonaktifkan');
        redirect('Penerima');
    }

    public function update_penerima_on($id)
    {
        $table = 'tbl_penerima';
        $data = array('status_penerima' => '0');
        $where = array('id_penerima' => $id);
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('validasi2', 'Diaktifkan');
        redirect('Penerima');
    }

    public function update_data_validation()
    {
        $table = 'tbl_penerima';
        $data = [
            'validation_data' => 1,
            'date_validation' => date('Y-m-d H:i:s'),
        ];
        $this->penerima->update_validation_data($table, $data);
        $this->session->set_flashdata('data_valid', 'Divalidasi');
        redirect('Penerima');
    }

    // public function single_validation()
    // {
    //     $status = 1;
    //     $valid_date = date('Y-m-d H:i:s');
    //     $koor = $this->input->post('koor');
    //     $this->penerima->single_validation($status, $valid_date, $koor);
    //     $this->session->set_flashdata('data_valid', 'Divalidasi');
    //     redirect('Penerima');
    // }

    public function cetak_data()
    {
        $id = $this->input->post('alamat');
        $this->data['title_pdf'] = 'Data Penerima RT';
        $file_pdf = 'data_penduduk_rt';
        $paper = 'A4';
        $orientation = "portrait";
        $this->data['data_penduduk'] = $this->penerima->print_data($id);
        $this->data['count'] = $this->penerima->count_kategori($id);
        $html = $this->load->view('conten/laporan_penerima', $this->data, true);
        $this->pdfgenerator->generate($html, $file_pdf, $paper, $orientation);
    }

    // public function cetak()
    // {
    //     $title_page = 'Data Penduduk RT';
    //     $data['cetak'] = 'Data Penduduk RT';
    //     $html = $this->load->view('conten/laporan_pdf', $data, true);
    //     $this->pdf->pdf_create($html, $title_page, 'A4', 'portaid');
    // }
}
