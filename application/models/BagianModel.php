<?php

defined('BASEPATH') or exit('No direct script access allowed');

class bagianModel extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function lihat_bagian()
	{
		$this->db->select('*');
		$this->db->from('sigaka_bagian');
		$this->db->order_by('bagian_date_created', 'DESC');
		$query = $this->db->get();
		return $query->result_array();
	}

	public function tambah_bagian($data)
	{
		$this->db->insert('sigaka_bagian', $data);
		return $this->db->affected_rows();
	}

	public function lihat_satu_bagian($id)
	{
		$this->db->select('*');
		$this->db->from('sigaka_bagian');
		$this->db->where('bagian_id', $id);
		$query = $this->db->get();
		return $query->row_array();
	}

	public function update_bagian($id, $data)
	{
		$this->db->where('bagian_id', $id);
		$this->db->update('sigaka_bagian', $data);
		return $this->db->affected_rows();
	}

	public function hapus_bagian($id)
	{
		$this->db->where('bagian_id', $id);
		$this->db->delete('sigaka_bagian');
		return $this->db->affected_rows();
	}
}
