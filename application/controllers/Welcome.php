<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('template');
    }

    public function index()
    {
        // echo 'hello';exit();
        header('Location: login/show_login');
    }

    public function home()
    {
        $this->template->set('title', 'My Trainer');
        $this->load->view('login');
    }
}