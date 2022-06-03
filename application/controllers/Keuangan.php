<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Keuangan extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3 && $this->session->userdata('level') != 4 && $this->session->userdata('level') != 7) {
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
            'conten' => 'conten/keuangan',
            'jml_donatur' => $this->keuangan->jumlah_donatur(),
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
            'get_data' => $get_donate,
            'get_alamat' => $this->m_data->get_data('tbl_master_alamat'),
            'footer_js' => array(
                'assets/js/zakat.js',
                'assets/js/alert-keuangan.js',
            ),

        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_donatur()
    {
        $table = 'tbl_donatur';
        $data = [
            'nama_donatur'    => $this->input->post('nama_donatur'),
            'alamat_donatur' => $this->input->post('alamat'),
            'alamat_lainnya'    => $this->input->post('lainnya'),
            'nominal'    => $this->input->post('nominal'),
            'petugas_penerima' => $this->session->userdata('id'),
        ];
        $this->m_data->simpan_data($table, $data);
        $this->session->set_flashdata('donatur', 'Disimpan');
        redirect('Keuangan/donatur');
    }

    public function update_donatur($id)
    {
        $table = 'tbl_donatur';
        $data = [
            'nama_donatur'    => $this->input->post('nama_donatur'),
            'alamat_donatur' => $this->input->post('alamat'),
            'alamat_lainnya'    => $this->input->post('lainnya'),
            'nominal'    => $this->input->post('nominal'),
            'petugas_penerima' => $this->session->userdata('id'),
        ];
        $where = ['id_donatur' => $id];
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('donatur', 'Diupdate');
        redirect('Keuangan/donatur');
    }

    public function hapus_donatur($id)
    {
        $table = 'tbl_donatur';
        $where = ['id_donatur' => $id];
        $this->m_data->hapus_data($table, $where);
        $this->session->set_flashdata('donatur', 'Dihapus');
        redirect('Keuangan/donatur');
    }

    public function update_donatur_terima($id)
    {
        $table = 'tbl_donatur';
        $data = [
            'status'    => 1,
            'validation' => date('Y-m-d H:i:s'),
        ];
        $where = ['id_donatur' => $id];
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('donatur', 'Tervalidasi');
        redirect('Keuangan/donatur');
    }

    public function update_donatur_tolak($id)
    {
        $table = 'tbl_donatur';
        $data = [
            'status'    => 0,
            'validation' => date('Y-m-d H:i:s'),
        ];
        $where = ['id_donatur' => $id];
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('donatur', 'Dibatalkan');
        redirect('Keuangan/donatur');
    }

    public function rekap_keuangan()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'id' => $this->session->userdata('id'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Data Donatur',
            'conten' => 'conten/rekap_keuangan',
            // 'get_data' => $get_donate,
            'get_alamat' => $this->m_data->get_data('tbl_master_alamat'),
            'jumlah_uang_beras' => $this->keuangan->jumlah_uang_beras(),
            'saldo_maal_fid' => $this->keuangan->saldo_maal_fid(),
            'saldo_is_ps' => $this->keuangan->saldo_is_ps(),
            'footer_js' => array(
                'assets/js/zakat.js',
                'assets/js/alert-keuangan.js',
            ),

        ];
        $this->load->view('template/conten', $data);
    }
}
