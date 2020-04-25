<?php
defined('BASEPATH') or exit('No direct script access allowed');
class login_model extends CI_Model
{

    public function validate($username, $password)
    {

        $condition = array('username' =>  $username, 'password' => $password);

        $this->db->select('type, email, firstname, lastname');
        $this->db->from('admin');
        $this->db->where($condition);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            $result_query =  $query->result();

            $return_data = array('data' => $result_query[0], 'type' => true, 'msg' => "ล็อกอินสำเร็จ");
        } else {

            $return_data = array('type' => false, 'msg' => "ล็อกอินไม่สำเร็จ");
        }
        return $return_data;
    }

    public function get_all()
    {
        $query = $this->db->get('user');
        return $query->result();
    }

    public function check_login($username, $password)
    {
        $this->db->where('username', $username);
        $this->db->where('password', hash('sha256', $password));
        $query = $this->db->get('user');
        return $query->result();
    }
}
