<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cousre extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('api/Course_model');
        $this->load->library('template');
    }

    public function get_course()
    {
        $data = $this->Course_model->get_coursetype_all();
        echo json_encode($data);
        // echo "a";
        // echo var_dump(json_encode($data));
    }

    public function get_course_filter()
    {
        $filter = array(
            "CTID" => $this->input->get('ct'),
            "gender" => $this->input->get('gender')
        );

        $data = $this->Course_model->get_cousre_filter($filter);

        $res = array(
            "status" => true,
            "message" => "Successful",
            "data" => $data
        );
        echo json_encode($res);
    }

    public function insert_engage()
    {
        $data = array(
            "UID" => $this->input->get("UID"),
            "CID" => $this->input->get("CID"),
            "LID" => $this->input->get("LID"),
            "StartCourse" => @$this->input->get("StartCourse"),
            "EndCourse" => @$this->input->get("EndCourse"),
            "TID" => $this->input->get("TID")
        );

        $this->Course_model->connect_trainer($data);
        $res = array(
            "status" => true,
            "message" => "Successful",
            "data" => $data
        );
        echo json_encode($res);
    }



    //-----------------------------------------------//

}
