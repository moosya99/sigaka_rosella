<?php

defined('BASEPATH') or exit('No direct script access allowed');

class BagianController extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('BagianModel');
		$this->load->helper('nominal');
		if (!$this->session->has_userdata('session_id')) {
			$this->session->set_flashdata('alert', 'belum_login');
			redirect(base_url('login'));
		}
	}

	public function index()
	{
		$data = array(
			'bagian' => $this->BagianModel->lihat_bagian(),
			'title' => 'bagian'
		);
		$this->load->view('templates/header', $data);
		$this->load->view('backend/bagian/index', $data);
		$this->load->view('templates/footer');
	}

	public function tambah()
	{
		if (isset($_POST['simpan'])) {
			$generate = substr(time(), 5);
			$id = 'BAG-' . $generate;
			$bagian = $this->input->post('bagian');
			$gaji = $this->input->post('gaji');
			$data = array(
				'bagian_id' => $id,
				'bagian_nama' => $bagian,
				'bagian_gaji' => $gaji
			);
			$save = $this->BagianModel->tambah_bagian($data);
			if ($save > 0) {
				$this->session->set_flashdata('alert', 'tambah_bagian');
				redirect('bagian');
			} else {
				redirect('bagian');
			}
		}
	}

	public function updateForm($id)
	{
		$data = $this->BagianModel->lihat_satu_bagian($id);
		echo json_encode($data);
	}

	public function update()
	{
		if (isset($_POST['update'])) {
			$id = $this->input->post('id');
			$bagian = $this->input->post('bagian');
			$gaji = $this->input->post('gaji');
			$data = array(
				'bagian_nama' => $bagian,
				'bagian_gaji' => $gaji
			);
			$update = $this->BagianModel->update_bagian($id, $data);
			if ($update > 0) {
				$this->session->set_flashdata('alert', 'update_bagian');
				redirect('bagian');
			} else {
				redirect('bagian');
			}
		}
	}

	public function hapus($id)
	{
		$hapus = $this->BagianModel->hapus_bagian($id);
		if ($hapus > 0) {
			$this->session->set_flashdata('alert', 'hapus_bagian');
			redirect('bagian');
		} else {
			redirect('bagian');
		}
	}
}
