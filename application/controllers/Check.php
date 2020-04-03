<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Check extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('template');
        $this->load->model('Register_model');
    }

    public function index()
    {
        // echo 'hello';exit();
        header('Location: welcome/home');
    }

    public function check_register()
    {
        $this->template->set('title', 'Register');
        $this->template->load('template/light', 'pages/check_register');
    }
    public function check_regis_trainer()
    {
        $this->template->set('title', 'Register');
        $this->template->load('template/light', 'pages/trainer_regis');
    }
    public function check_regis_user()
    {
        $this->template->set('title', 'Register');
        $this->template->load('template/light', 'pages/user_regis');
    }

    public function get_register()
    {
        $data = $this->Register_model->get_register_model();
        echo json_encode($data);
    }

    public function get_regis_user()
    {
        $datauser = $this->Register_model->get_register_model();
        if ($datauser !== null) {
            $return_datas['status'] = 1;
            $return_datas['data'] = $datauser;
        }
        // fail 
        else {
            $return_datas['status'] = 0;
            $return_datas['data'] = null;
        }
        // echo data
        echo json_encode($return_datas);
        # code...

    }
    public function get_regis_trainer()
    {
        $datauser = $this->Register_model->get_registerT_model();
        if ($datauser !== null) {
            $return_datas['status'] = 1;
            $return_datas['data'] = $datauser;
        }
        // fail 
        else {
            $return_datas['status'] = 0;
            $return_datas['data'] = null;
        }
        // echo data
        echo json_encode($return_datas);
        # code...

    }


    public function show_user_form()
    {
        $user_id = $this->input->post("u_id");
        $user = $this->Course_model->get_id_product($user_id);
        echo json_encode($user);

        return true;
    }
}
