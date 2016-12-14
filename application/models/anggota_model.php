<?php

class Anggota_model extends Model {
	
	var $data;

	function Anggota_model()
	{
		parent::Model();
	}
	
	function get_all_data(){
		$query = $this->db->get('anggota');
		if ($query->num_rows() > 0)
		{
			return $query->result();
		}
		else
		{
			return FALSE;
		}
	}

	function get_data_by_id($id){
		$this->db->where('id', $id);
		$query = $this->db->get('anggota');
		if ($query->num_rows() > 0)
		{
			return $query->row_array();
		}
		else
		{
			return FALSE;
		}
	}

	function fill_data()
	{
		$this->data = array(
			'no_anggota' => $this->input->post('no_anggota'),
			'nama' => $this->input->post('nama'),
			'tgl_masuk' => $this->input->post('tgl_masuk'),
			//'npwp' => $this->input->post('npwp').$this->input->post('npwp1').$this->input->post('npwp2').$this->input->post('npwp3').$this->input->post('npwp4').$this->input->post('npwp5'),
			'alamat' => $this->input->post('alamat'),
			'kota' => $this->input->post('kota'),
			'telpon_1' => $this->input->post('telpon_1'),
			'telpon_2' => $this->input->post('telpon_2'),
			'pekerjaan' => $this->input->post('pekerjaan'),
			'jns_id' => $this->input->post('jns_id'),
			'no_id' => $this->input->post('no_id'),
			'email' => $this->input->post('email'),
			'website' => $this->input->post('website'),
			'keterangan' => $this->input->post('keterangan')
		);
	}
	
	//cek duplikasi nomor anggota
	function check_no_anggota($id = '')
	{
		$this->db->where('no_anggota', $this->data['no_anggota']);
		if($id != '') $this->db->where('id !=', $id);
		$query = $this->db->get('anggota');

		if ($query->num_rows() > 0)
		{
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
	
	//Check for duplicate login ID
	function check_name($id = '')
	{
		$this->db->where('nama', $this->data['nama']);
		if($id != '') $this->db->where('id !=', $id);
		$query = $this->db->get('anggota');

		if ($query->num_rows() > 0)
		{
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}	

	function insert_data()
	{
		$insert = $this->db->insert('anggota', $this->data);
		return $insert;
	}

	function update_data($id)
	{
		$this->db->where('id', $id);
		$update = $this->db->update('anggota', $this->data);
		return $update;
	}

	function delete_data($id){
		$this->db->where('id', $id);
		$delete = $this->db->delete('anggota');
		return $delete;
	}
	
	function get_data_for_dropdown()
	{
		$data = $this->get_all_data();
		if($data) {
			$anggota[0] = "Non-Anggota";
			foreach ($data as $row) {
				$anggota[$row->id] = $row->nama;
			}
			return $anggota;
		}
		else
		{
			return FALSE;
		}
	}

}

/* End of file anggota_model.php */
/* Location: ./application/models/anggota_model.php */
