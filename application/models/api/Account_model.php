<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Account_model extends CI_Model
{
    public function check_login($email, $password)
    {
        $this->db->where('email', $email);
        $this->db->where('password', md5($password));
        $query = $this->db->get('user');
        if ($query->num_rows() == 1) {
            return $query->row();
        } else {
            return null;
        }
    }
    public function set_token_login($id)
    {
        $key_token = $this->generate($id);
        $data = array(
            'token_login' => $key_token
        );

        $this->db->where("id", $id);
        $this->db->update('user', $data);
        return $key_token;
    }

    public function generate($key = null)
    {
        $key_token = md5($key . date('Y-m-dH:i:s'));
        return $key_token;
    }

    public function register_user($email, $password, $firstname, $lastname, $nickname, $weight, $height, $gender, $telephone, $birthday, $status, $type)
    {
        $check_email = $this->db->where('email', $email)->get('user')->num_rows();
        if ($check_email == 0) {
            $data = array(
                'email' => $email,
                'password' => md5($password),
                'firstname' => $firstname,
                'lastname' => $lastname,
                'nickname' => $nickname,
                'weight' => $weight,
                'height' => $height,
                'gender' => $gender,
                'telephone' => $telephone,
                'birthday' => $birthday,
                'status' => $status,
                'type' => $type
            );
            $this->db->insert('user', $data);
            return  $data;
        } else {
            return false;
        }
    }
}
