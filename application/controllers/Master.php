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
            'conten' => 'conten/master'
        ];
        $this->load->view('template/conten', $data);
    }

    public function master_user()
    {
        // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {
        //     redirect(base_url("login"));
        // }
        $data = [
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
}
