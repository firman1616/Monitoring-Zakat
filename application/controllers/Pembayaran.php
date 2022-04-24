<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pembayaran extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 4 && $this->session->userdata('level') != 5) {
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
            'conten' => 'conten/pembayaran',
            'fitrah' => $this->zakat->jumlah_fitrah(),
            'maal' => $this->zakat->jumlah_maal(),
        ];
        $this->load->view('template/conten', $data);
    }

    public function zakat_fitrah()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'id_user' => $this->session->userdata('id'),
            'title' => 'Zakat Fitrah',
            'conten' => 'conten/zakat_fitrah',
            'get_fitrah' => $this->zakat->tampil_fitrah(),
            'get_fitrah_filter' => $this->zakat->tampil_fitrah_filter(),
            'get_alamat' => $this->m_data->get_data('tbl_master_alamat'),
            'headder_css' => array(
                'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                'assets/js/zakat.js',
                // 'assets/js/fitrah.js',
                'assets/js/alert-zakat.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_zakat_fitrah()
    {
        $table = 'tbl_zakat_fitrah';
        $id_user = $this->session->userdata('id');
        $data = [
            'nama_pemberi_zakat_fitrah' => $this->input->post('nama_pemberi'),
            'besaran_jiwa' => $this->input->post('besaran_jiwa'),
            'berat_beras' => $this->input->post('satuan_beras'),
            'total_beras' => $this->input->post('total'),
            'uang' => $this->input->post('uang'),
            'alamat' => $this->input->post('alamat'),
            'alamat_lainnya' => $this->input->post('lainnya'),
            'keterangan' => $this->input->post('keterangan'),
            'petugas' => $id_user,
            'tanggal' => date('Y-m-d h:i:s'),
        ];
        $this->m_data->simpan_data($table, $data);
        $this->session->set_flashdata('fitrah', 'Disimpan');
        redirect('Pembayaran/zakat_fitrah');
    }

    public function hapus_zakat_fitrah($id)
    {
        $table = 'tbl_zakat_fitrah';
        $where = ['id_zakat_fitrah' => $id];
        $this->m_data->hapus_data($table, $where);
        $this->session->set_flashdata('fitrah', 'Dihapus');
        redirect('Pembayaran/zakat_fitrah');
    }

    public function v_edit_fitrah($id)
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'id_user' => $this->session->userdata('id'),
            'title' => 'Ubah Zakat Fitrah',
            'conten' => 'conten/edit_zakat_fitrah',
            'get_data' => $this->m_data->get_data_by_id('tbl_zakat_fitrah', array('id_zakat_fitrah' => $id)),
            'get_fitrah_filter' => $this->zakat->tampil_fitrah_filter(),
            'get_alamat' => $this->m_data->get_data('tbl_master_alamat'),
            'headder_css' => array(
                'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                'assets/js/zakat.js',
                // 'assets/js/fitrah.js',
                'assets/js/alert-zakat.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function update_zakat_fitrah($id)
    {
        $id_user = $this->session->userdata('id');
        $table = 'tbl_zakat_fitrah';
        $where = ['id_zakat_fitrah' => $id];
        $data = [
            'nama_pemberi_zakat_fitrah' => $this->input->post('nama_pemberi'),
            'besaran_jiwa' => $this->input->post('besaran_jiwa'),
            'berat_beras' => $this->input->post('satuan_beras'),
            'total_beras' => $this->input->post('total'),
            'uang' => $this->input->post('uang'),
            'alamat' => $this->input->post('alamat'),
            'alamat_lainnya' => $this->input->post('lainnya'),
            'keterangan' => $this->input->post('keterangan'),
            'petugas' => $id_user,
            'tanggal' => date('Y-m-d h:i:s'),
        ];
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('fitrah', 'Diubah');
        redirect('Pembayaran/zakat_fitrah');
    }

    public function zakat_maal()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'id_user' => $this->session->userdata('id'),
            'title' => 'Zakat Maal',
            'conten' => 'conten/zakat_maal',
            'get_maal' => $this->zakat->tampil_maal(),
            'get_maal_filter' => $this->zakat->tampil_maal_filter(),
            'get_alamat' => $this->m_data->get_data('tbl_master_alamat'),
            'get_kategori' => $this->m_data->get_data('tbl_master_maal'),
            // 'get_koor' => $this->m_data->get_data('tbl_user_koor'),
            'get_koor' => $this->zakat->user_koor(),
            'headder_css' => array(
                'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                'assets/js/zakat.js',
                // 'assets/js/fitrah.js',
                'assets/js/alert-zakat.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_zakat_maal()
    {
        $table = 'tbl_zakat_maal';
        $id_user = $this->session->userdata('id');
        $data = [
            'nama_pemberi_maal' => $this->input->post('nama_pemberi'),
            'kategori_zakat' => $this->input->post('kategori_maal'),
            'nominal_zakat' => $this->input->post('nominal'),
            'alamat' => $this->input->post('alamat'),
            'alamat_lainnya' => $this->input->post('lainnya'),
            'keterangan' => $this->input->post('keterangan'),
            'petugas1' => $id_user,
            'tanggal' => date('Y-m-d h:i:s'),
            'petugas2' => $this->input->post('petugas2')
        ];
        $this->m_data->simpan_data($table, $data);
        $this->session->set_flashdata('maal', 'Disimpan');
        redirect('Pembayaran/zakat_maal');
    }

    public function hapus_zakat_maal($id)
    {
        $table = 'tbl_zakat_maal';
        $where = ['id_zakat_maal' => $id];
        $this->m_data->hapus_data($table, $where);
        $this->session->set_flashdata('maal', 'Dihapus');
        redirect('Pembayaran/zakat_maal');
    }

    public function v_edit_maal($id)
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'id_user' => $this->session->userdata('id'),
            'title' => 'Ubah Zakat maal',
            'conten' => 'conten/edit_zakat_maal',
            'get_data' => $this->m_data->get_data_by_id('tbl_zakat_maal', array('id_zakat_maal' => $id)),
            'get_maal_filter' => $this->zakat->tampil_maal_filter(),
            'get_alamat' => $this->m_data->get_data('tbl_master_alamat'),
            'get_kategori' => $this->m_data->get_data('tbl_master_maal'),
            'get_koor' => $this->zakat->user_koor(),
            'headder_css' => array(
                'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                'assets/js/zakat.js',
                // 'assets/js/maal.js',
                'assets/js/alert-zakat.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function update_zakat_maal($id)
    {
        $id_user = $this->session->userdata('id');
        $table = 'tbl_zakat_maal';
        $where = ['id_zakat_maal' => $id];
        $data = [
            'nama_pemberi_maal' => $this->input->post('nama_pemberi'),
            'kategori_zakat' => $this->input->post('kategori_maal'),
            'nominal_zakat' => $this->input->post('nominal'),
            'alamat' => $this->input->post('alamat'),
            'alamat_lainnya' => $this->input->post('lainnya'),
            'keterangan' => $this->input->post('keterangan'),
            'petugas1' => $id_user,
            'tanggal' => date('Y-m-d h:i:s'),
            'petugas2' => $this->input->post('petugas2')
        ];
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('maal', 'Diubah');
        redirect('Pembayaran/zakat_maal');
    }
}
