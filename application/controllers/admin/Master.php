<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {
    public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {
			redirect(base_url("login"));
		}
		//	$this->load->library('Pdf');
	}

	
	public function index()
	{
        $data = [
			'name'		=> $this->session->userdata('nama'),
            'title'     => 'Master User Petugas',
            'conten'    => 'conten/master_user_petugas',
            'level'     => $this->m_data->get_data('tbl_master_jabatan'),
            'user_petugas' => $this->m_data->user_petugas()
        ];
		$this->load->view('template/conten',$data);
	}

    public function tambah_user_petugas()
    {
        $table = 'tbl_user_petugas';
        $data = array(
            'nama_petugas' => $this->input->post('nama_user'),
            'username'     => $this->input->post('username'),
            'password'     => md5($this->input->post('username')),
            'keterangan'   => $this->input->post('username'),
            'level'        => $this->input->post('jabatan')
        );
        $this->m_data->simpan_data($table,$data);
        redirect('admin/Master');
    }

    public function edit_data($id)
    {
        $table = 'tbl_user_petugas';
        $data = array(
            'nama_petugas' => $this->input->post('nama_user'),
            'username'     => $this->input->post('username'),
            'password'     => md5($this->input->post('password')),
            'keterangan'   => $this->input->post('password'),
            'level'        => $this->input->post('jabatan')
        );
        $where = array('id_user_petugas' => $id);
        $this->m_data->update_data($table,$data,$where);
        redirect('admin/Master');
    }

    public function hapus_data($id)
    {
        $table = 'tbl_user_petugas';
        $where = array('id_user_petugas' => $id);
        $this->m_data->hapus_data($table,$where);
        redirect('admin/Master');
    }

    public function koor()
    {
        $data = [
            'name'		=> $this->session->userdata('nama'),
            'title'     => 'Master User Koordinator',
            'conten'    => 'conten/master_user_koor',
            // 'level'     => $this->m_data->get_data('tbl_master_jabatan'),
            'user_koor' => $this->m_data->user_koor(),
            'alamat_koor' => $this->m_data->get_data('tbl_master_alamat')
        ];
		$this->load->view('template/conten',$data);
    }

    public function tambah_user_koor()
    {
        $table = 'tbl_user_koor';
        $data = array(
            'nama_koor' => $this->input->post('nama_koor'),
            'panggilan_koor' => $this->input->post('panggilan'),
            'alamat_koor' => $this->input->post('alamat'),
            'username' => $this->input->post('username'),
            'password' => md5($this->input->post('username')),
            'level' => '5'
        );
        $this->m_data->simpan_data($table,$data);
        redirect('admin/master/koor');
    }

    public function edit_data_koor($id)
    {
        $table = 'tbl_user_koor';
        $data = array(
            'nama_koor' => $this->input->post('nama_koor'),
            'panggilan_koor' => $this->input->post('panggilan'),
            'alamat_koor' => $this->input->post('alamat'),
            'username' => $this->input->post('username'),
            'password' => md5($this->input->post('password')),
            'level' => '5'
        );
        $where= array('id_user_koor' => $id);
        $this->m_data->update_data($table,$data,$where);
        redirect('admin/Master/koor');
    }

    public function hapus_data_koor($id)
    {
        $table = 'tbl_user_koor';
        $where = array('id_user_koor' => $id);
        $this->m_data->hapus_data($table,$where);
        redirect('admin/Master/koor');
    }

    public function kwitansi()
    {
        $data = [
            'name'		=> $this->session->userdata('nama'),
            'title'     => 'Master Kwitansi',
            'conten'    => 'conten/master_kwitansi',
            'get_data'  => $this->m_data->get_data_by_id('tbl_master_kwitansi', array('id_kwitansi' => 1))
        ];
		$this->load->view('template/conten',$data);
    }

    public function update_master(){
		if (!empty($_FILES['filefoto']['name'])) {
			$image = $this->M_data->get_data_by_id('tbl_master_kwitansi',array('id_kwitansi' => 1));
			$path = './assets/img/';
			foreach ($image->result() as $row){
					unlink($path.$row->nama_foto);
			}
			$this->load->library('upload');
			$nmfile = "logo_".time(); //nama file saya beri nama langsung dan diikuti fungsi time
			$config['upload_path'] = './assets/img'; //path folder
			$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
			$config['max_size'] = '3072'; //maksimum besar file 3M
			$config['max_width']  = '5000'; //lebar maksimum 5000 px
			$config['max_height']  = '5000'; //tinggi maksimu 5000 px
			$config['file_name'] = $nmfile; //nama yang terupload nantinya

			$this->upload->initialize($config);

			if($_FILES['filefoto']['name'])
			{
					if ($this->upload->do_upload('filefoto'))
					{
						$gbr = $this->upload->data();
						$data = array(	'logo_organisasi'  => $gbr['file_name'],
										'nama_organisasi'  => $this->input->post('nama_organisasi'),
										'nama_lembaga' 	   => $this->input->post('nama_lembaga'),
										'pembayaran' 	   => $this->input->post('pembayaran'),
										'kota_kwitansi'	   => $this->input->post('kota_organisasi')
							);
						$where = array('id_kwitansi'=> 1);
						$this->M_data->update_data('tbl_master_kwitansi',$data,$where); //akses model untuk menyimpan ke database
						//pesan yang muncul jika berhasil diupload pada session flashdata
						$this->session->set_flashdata('berhasil', 'Diupdate');
						redirect('admin/setting/master_kwitansi');
					}else{
						//pesan yang muncul jika terdapat error dimasukkan pada session flashdata
						$this->session->set_flashdata('gagal', 'Diupdate');
						
						redirect('admin/setting/master_kwitansi'); //jika gagal maka akan ditampilkan form upload
					}
			}
		}else {
			$data = array(
						'nama_organisasi'  => $this->input->post('nama_organisasi'),
						'nama_lembaga' 	   => $this->input->post('nama_lembaga'),
						'pembayaran' 	   => $this->input->post('pembayaran'),
						'kota_kwitansi'	   => $this->input->post('kota_organisasi')
					);
			$where = array(
				'id_kwitansi'=>1
			);
			$this->M_data->update_data('tbl_master_kwitansi',$data,$where);
			$this->session->set_flashdata('data', 'Diperbarui');
			//$this->session->set_flashdata("success", "<center><b>Update Data Success</b></center>");
			redirect('admin/setting/master_kwitansi');
		}
	}
}
