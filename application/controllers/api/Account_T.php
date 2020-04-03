<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Account_T extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('api/account_T_model');
    }

    public function login()
    {
        $email = $this->input->get('email');
        $password = $this->input->get('password');

        if (!empty($email) && !empty($password)) {
            $data_login = $this->account_T_model->check_login($email, $password);
            if ($data_login != null) {
                // echo $data_login->id;
                $key_token = $this->account_T_model->set_token_login($data_login->id);
                echo json_encode(array('status' => true, 'message' => "successfull", 'key_token' => $key_token, 'data' => $data_login));
            } else {
                echo json_encode(array('status' => false, 'message' => "ไม่พบบัญชีผู้ใช้"));
            }
        } else {
            echo json_encode(array('status' => false, 'message' => "อีเมลหรือรหัสไม่ถูกต้อง"));
        }
    }

    public function hash_Pass($pass)
    {
        echo md5($pass);
    }

    public function get_profile()
    {
        $token_login = $this->input->get('token_login');

        $this->db->where('token_login', $token_login);
        $result = $this->db->get('trainer');

        echo json_encode($result->row());
    }

    public function register()
    {
        $email = $this->input->get('email');
        $password = $this->input->get('password');
        $firstname = $this->input->get('firstname');
        $lastname = $this->input->get('lastname');
        $nickname = $this->input->get('nickname');
        $weight = $this->input->get('weight');
        $height = $this->input->get('height');
        $gender = $this->input->get('gender');
        $telephone = $this->input->get('telephone');
        $birthday = $this->input->get('birthday');
        $status = $this->input->get('status');
        $type = $this->input->get('type');
        if (!empty($email) || !empty($password)  || !empty($firstname) || !empty($lastname) || !empty($nickname) || !empty($weight) || !empty($height) || !empty($gender) || !empty($birthday) || !empty($telephone)) {
            $data_regis = $this->account_T_model->register_trainer($email, $password, $firstname, $lastname, $nickname, $weight, $height, $gender, $telephone, $birthday, $status, $type);

            if ($data_regis != false) {
                $res = array(
                    "status" => true,
                    "message" => "สมัครสำเร็จ",
                    "data" => $data_regis
                );
                echo json_encode($res);
            } else {
                $res = array(
                    "status" => false,
                    "message" => "ไม่สามารถใช้อีเมลนี้ได้",
                );
                echo json_encode($res);
            }
        } else {
            $res = array(
                "status" => false,
                "message" => "กรุณาตรวจสอบข้อมูล",
            );
            echo json_encode($res);
        }
    }
}
