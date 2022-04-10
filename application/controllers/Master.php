<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {
        //     redirect(base_url("login"));
        // }
        // $this->load->library('Pdf');
        $this->load->model('M_master', 'master');
    }


    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Master Page',
            'conten' => 'conten/master',
            'petugas' => $this->master->jumlah_user_petugas(),
            'koor' => $this->master->jumlah_user_koor(),
            'alamat' => $this->master->jumlah_alamat(),
            'j_akses' => $this->master->jumlah_akses(),
            'jabatan' => $this->master->jumlah_jabatan(),
            'maal' => $this->master->jumlah_maal(),
            'penerima' => $this->master->jumlah_penerima(),
        ];
        $this->load->view('template/conten', $data);
    }

    public function master_user()
    {
        // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {
        //     redirect(base_url("login"));
        // }
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Master User',
            'conten' => 'conten/master_user',
            'user_petugas' => $this->master->user_petugas(),
            'user_koor' => $this->master->user_koor(),
            'master_alamat' => $this->m_data->get_data('tbl_master_alamat'),
            'master_akses' => $this->m_data->get_data('tbl_master_akses'),
            'headder_css' => array(
                'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                'assets/js/alert-master.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_data_user()
    {
        $tipe = $this->input->post('tipe_user');
        $table1 = 'tbl_user_petugas';
        $table2 = 'tbl_user_koor';
        $data1 = [
            'nama_petugas' => $this->input->post('nama_user'),
            'username' => $this->input->post('username'),
            'password' => md5($this->input->post('username')),
            'keterangan' => $this->input->post('username'),
            'level' => $this->input->post('akses'),
            'alamat_petugas' => $this->input->post('alamat'),
        ];
        $data2 = [

            'nama_koor' => $this->input->post('nama_user'),
            'username' => $this->input->post('username'),
            'password' => md5($this->input->post('username')),
            'level' => $this->input->post('akses'),
            'alamat_koor' => $this->input->post('alamat'),
        ];
        if ($tipe == 1) {
            $this->m_data->simpan_data($table1, $data1);
        } else {
            $this->m_data->simpan_data($table2, $data2);
        }
        $this->session->set_flashdata('user', 'Ditambahkan');
        redirect('Master/master_user');
    }

    public function update_petugas($id)
    {
        $table = 'tbl_user_petugas';
        $data = [
            'nama_petugas' => $this->input->post('nama_user'),
            'username' => $this->input->post('username'),
            'password' => md5($this->input->post('password')),
            'keterangan' => $this->input->post('password'),
            'level' => $this->input->post('akses'),
            'alamat_petugas' => $this->input->post('alamat'),
        ];
        $where = ['id_user_petugas' => $id];
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('user', 'Diubah');
        redirect('Master/master_user');
    }

    public function update_koor($id)
    {
        $table = 'tbl_user_koor';
        $data = [
            'nama_koor' => $this->input->post('nama_user'),
            'username' => $this->input->post('username'),
            'password' => md5($this->input->post('password')),
            'level' => 5,
            'alamat_koor' => $this->input->post('alamat'),
        ];
        $where = ['id_user_koor' => $id];
        $this->m_data->update_data($table, $data, $where);
        $this->session->set_flashdata('user', 'Diubah');
        redirect('Master/master_user');
    }

    public function hapus_petugas($id)
    {
        $table = 'tbl_user_petugas';
        $where = ['id_user_petugas' => $id];
        $this->m_data->hapus_data($table, $where);
        $this->session->set_flashdata('user', 'Dihapus');
        redirect('Master/master_user');
    }

    public function hapus_koor($id)
    {
        $table = 'tbl_user_koor';
        $where = ['id_user_koor' => $id];
        $this->m_data->hapus_data($table, $where);
        $this->session->set_flashdata('user', 'Dihapus');
        redirect('Master/master_user');
    }

    public function master_alamat()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Master Alamat',
            'conten' => 'conten/master_alamat',
            'master_alamat' => $this->m_data->get_data('tbl_master_alamat'),
            'headder_css' => array(
                // 'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                // 'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                // 'assets/js/alert-master.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_alamat()
    {
        $table = 'tbl_master_alamat';
        $data = [
            'nama_master_alamat' => $this->input->post('nama_alamat'),
        ];
        $this->m_data->simpan_data($table, $data);
        redirect('Master/master_alamat');
    }

    public function update_alamat($id)
    {
        $table = 'tbl_master_alamat';
        $data = [
            'nama_master_alamat' => $this->input->post('nama_alamat'),
        ];
        $where = ['id_master_alamat' => $id];
        $this->m_data->update_data($table, $data, $where);
        redirect('Master/master_alamat');
    }

    public function master_akses()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Master Akses',
            'conten' => 'conten/master_akses',
            'master_akses' => $this->m_data->get_data('tbl_master_akses'),
            'headder_css' => array(
                // 'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                // 'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                // 'assets/js/alert-master.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_akses()
    {
        $table = 'tbl_master_akses';
        $data = [
            'nama_akses' => $this->input->post('nama_akses'),
        ];
        $this->m_data->simpan_data($table, $data);
        redirect('Master/master_akses');
    }

    public function update_akses($id)
    {
        $table = 'tbl_master_akses';
        $data = [
            'nama_akses' => $this->input->post('nama_akses'),
        ];
        $where = ['id_akses' => $id];
        $this->m_data->update_data($table, $data, $where);
        redirect('Master/master_akses');
    }

    public function master_jabatan()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Master jabatan',
            'conten' => 'conten/master_jabatan',
            'master_jabatan' => $this->m_data->get_data('tbl_master_jabatan'),
            'headder_css' => array(
                // 'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                // 'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                // 'assets/js/alert-master.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_jabatan()
    {
        $table = 'tbl_master_jabatan';
        $data = [
            'nama_jabatan' => $this->input->post('nama_jabatan'),
        ];
        $this->m_data->simpan_data($table, $data);
        redirect('Master/master_jabatan');
    }

    public function update_jabatan($id)
    {
        $table = 'tbl_master_jabatan';
        $data = [
            'nama_jabatan' => $this->input->post('nama_jabatan'),
        ];
        $where = ['id_jabatan' => $id];
        $this->m_data->update_data($table, $data, $where);
        redirect('Master/master_jabatan');
    }

    public function master_maal()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Master Maal',
            'conten' => 'conten/master_maal',
            'master_maal' => $this->m_data->get_data('tbl_master_maal'),
            'headder_css' => array(
                // 'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                // 'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                // 'assets/js/alert-master.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_maal()
    {
        $table = 'tbl_master_maal';
        $data = [
            'nama_maal' => $this->input->post('nama_maal'),
        ];
        $this->m_data->simpan_data($table, $data);
        redirect('Master/master_maal');
    }

    public function update_maal($id)
    {
        $table = 'tbl_master_maal';
        $data = [
            'nama_maal' => $this->input->post('nama_maal'),
        ];
        $where = ['id_master_maal' => $id];
        $this->m_data->update_data($table, $data, $where);
        redirect('Master/master_maal');
    }

    public function master_penerima()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Master penerima',
            'conten' => 'conten/master_penerima',
            'master_penerima' => $this->m_data->get_data('tbl_master_penerima'),
            'headder_css' => array(
                // 'assets/template/assets/vendor/simple-datatables/style.css',
            ),
            'footer_js' => array(
                // 'assets/template/assets/vendor/simple-datatables/simple-datatables.js',
                // 'assets/js/alert-master.js',
            ),
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_penerima()
    {
        $table = 'tbl_master_penerima';
        $data = [
            'nama_ket' => $this->input->post('nama_penerima'),
        ];
        $this->m_data->simpan_data($table, $data);
        redirect('Master/master_penerima');
    }

    public function update_penerima($id)
    {
        $table = 'tbl_master_penerima';
        $data = [
            'nama_ket' => $this->input->post('nama_penerima'),
        ];
        $where = ['id_ket' => $id];
        $this->m_data->update_data($table, $data, $where);
        redirect('Master/master_penerima');
    }
}
