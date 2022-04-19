<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Login Page'
        ];
        $this->load->view('login', $data);
    }

    public function login_form()
    {
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        // admin
        $where1 = array(
            'username' => $username,
            'password' => $password,
            'level' => 1
        );
        $cek1 = $this->M_data->get_data_by_id("tbl_user_petugas", $where1);
        //user
        $where2 = array(
            'username' => $username,
            'password' => $password,
            'level' => 2
        );
        $cek2 = $this->M_data->get_data_by_id("tbl_user_petugas", $where2);

        // Manager
        $where3 = array(
            'username' => $username,
            'password' => $password,
            'level' => 3
        );
        $cek3 = $this->M_data->get_data_by_id("tbl_user_petugas", $where3);

        $where4 = array(
            'username' => $username,
            'password' => $password,
            'level' => 4
        );
        $cek4 = $this->M_data->get_data_by_id("tbl_user_petugas", $where4);

        $where5 = array(
            'username' => $username,
            'password' => $password,
            'level' => 5
        );
        $cek5 = $this->M_data->get_data_by_id("tbl_user_petugas", $where5);

        $where7 = array(
            'username' => $username,
            'password' => $password,
            'level' => 7
        );
        $cek7 = $this->M_data->get_data_by_id("tbl_user_petugas", $where7);

        if ($cek1->num_rows() > 0) {
            foreach ($cek1->result() as $row) {
                $id = $row->id_user_petugas;
                $nama = $row->nama_petugas;
                // $lengkap = $row->nama_lengkap;
            }
            $data_session = array(
                'status'     => true,
                'level'     => 1,
                'id'        => $id,
                'nama'        => $nama

            );
            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } elseif ($cek2->num_rows() > 0) {
            foreach ($cek2->result() as $row) {
                $id = $row->id_user_petugas;
                $nama = $row->nama_petugas;
            }
            $data_session = array(
                'status'     => true,
                'level'     => 2,
                'id'     => $id,
                'nama'        => $nama,
                // 'panggilan' => $panggilan
            );

            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } elseif ($cek3->num_rows() > 0) {
            foreach ($cek3->result() as $row) {
                $id = $row->id_user_petugas;
                $nama = $row->nama_petugas;
            }
            $data_session = array(
                'status'     => true,
                'level'     => 3,
                'id'        => $id,
                'nama'        => $nama
            );

            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } elseif ($cek4->num_rows() > 0) {
            foreach ($cek4->result() as $row) {
                $id = $row->id_user_petugas;
                $nama = $row->nama_petugas;
            }
            $data_session = array(
                'status'     => true,
                'level'     => 4,
                'id'        => $id,
                'nama'        => $nama
            );

            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } elseif ($cek5->num_rows() > 0) {
            foreach ($cek5->result() as $row) {
                $id = $row->id_user_petugas;
                $nama = $row->nama_petugas;
            }
            $data_session = array(
                'status'     => true,
                'level'     => 5,
                'id'        => $id,
                'nama'        => $nama
            );

            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } elseif ($cek7->num_rows() > 0) {
            foreach ($cek7->result() as $row) {
                // $id = $row->id_user_koor;
                $id = $row->id_user_petugas;
                // $nama = $row->nama_koor;
                $nama = $row->nama_petugas;
                // $panggilan = $row->panggilan_koor;
            }
            $data_session = array(
                'status'     => true,
                'level'      => 7,
                // 'id_koor'    => $id,
                'id'         => $id,
                'nama'       => $nama,
                // 'panggilan' => $panggilan
            );

            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } else {
            $this->session->set_flashdata('flash', 'Wrong');

            redirect(base_url('Login'));
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url('Login'));
    }
}
