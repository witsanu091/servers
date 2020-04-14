<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Register_model extends CI_Model
{
    public function get_register_model($status = 1)
    {
        $this->db->select('id, firstname, gender,email');
        if ($status = 1) {
            $this->db->where('status', $status);
        }
        $query = $this->db->get('user');
        return $query->result();
    }

    public function get_registerT_model($status = 1)
    {
        $this->db->select('id, firstname, gender,email,contact');
        if ($status = 1) {
            $this->db->where('status', $status);
        }
        $query = $this->db->get('trainer');
        return $query->result();
    }

    public function get_id_user($id)
    {
        $query = $this->db->get_where('user', array('id' => $id));
        return $query->row_array();
    }


    public function show_data_user($id, $firstname, $price, $amount)
    {
        $data = array(
            'id' => $id,
            'name' => $firstname,
            'price' => $price,
            'amount' => $amount
        );
        $this->db->where('id', $id);
        $this->db->update('products', $data);

        return true;
    }
}
