<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cousre extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('api/Course_model');
        $this->load->library('template');
        date_default_timezone_set("Asia/Bangkok");
    }

    public function get_course()
    {
        $data = $this->Course_model->get_coursetype_all();
        echo json_encode($data);
        // echo "a";
        // echo var_dump(json_encode($data));
    }

    public function get_course_filter() //123123/sever/api/get_course_filter?ct=2 => course [ CID ]
    {
        $filter = array(
            "CTID" => $this->input->get('ct'),
            "gender" => $this->input->get('gender'),
            "LID" => $this->input->get('LID')
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
            "StartCourse" => @$this->input->get("StartCourse"),
            "EndCourse" => @$this->input->get("EndCourse"),
            "TCID" => $this->input->get("TCID"),
            "engage_status" => "1"
        );

        $this->Course_model->connect_trainer($data);
        $res = array(
            "status" => true,
            "message" => "Successful",
            "data" => $data
        );
        echo json_encode($res);
    }

    public function show_engage()
    {
        $seeby = (empty($this->input->get('seeby'))) ? 't' : $this->input->get('seeby');

        $filter = array(
            'seeby' => $seeby,
            'TID' => @$this->input->get('TID'),
            'UID' => @$this->input->get('UID'),
        );
        $data = $this->Course_model->show_engage($filter);
        echo json_encode($data);
    }

    public function show_end_engage()
    {
        $data = array(
            'UID' => $this->input->get('UID'),

        );
        $data_C = $this->Course_model->show_end_engage($data);
        $res = array(
            "status" => true,
            "message" => "Successful",
            "data" => $data_C
        );

        echo json_encode($data_C);
    }

    public function add_course()
    {
        $TID = $this->input->get('TID');
        $CID = $this->input->get('CID');
        $TCPrice = $this->input->get('TCPrice');
        $TCDetails = $this->input->get('TCDetails');
        $LID = $this->input->get('LID');
        $SCHDID = $this->input->get('SCHDID');
        // $SCHDID === '' ? 0 : $SCHDID;

        $data = $this->Course_model->add_course($TID, $CID, $TCPrice, $TCDetails, $LID, $SCHDID);

        $res = array(
            "status" => true,
            "message" => "Successful",
            "data" => $data
        );

        echo json_encode($data);
    }

    public function show_course_trainer()
    {
        $filter = array(
            "TID" => $this->input->get('TID'),
        );

        $data = $this->Course_model->show_course_trainer($filter);

        $res = array(
            "status" => true,
            "message" => "Successful",
            "data" => $data
        );
        echo json_encode($res);
    }

    public function get_course_id()
    {
        $CTID = array(
            "CTID" => $this->input->get('CTID'),
        );
        $data = $this->Course_model->get_course_id($CTID);
        echo json_encode($data);
    }

    public function get_location_id()
    {
        $data = $this->Course_model->get_location_id();
        echo json_encode($data);
    }

    public function change_status_engage()
    {

        $ENGID = $this->input->get("ENGID");
        $engage_status = $this->input->get("engage_status");
        $res = array();
        if (!empty($ENGID) || !empty($engage_status)) {
            $data = array(
                'ENGID' => $ENGID,
                'engage_status' => $engage_status,
                'StartCourse' => date("Y/m/d H:i:s")
            );
            $result_data = $this->Course_model->change_status_engage($ENGID, $data);
            $res = array(
                "status" => true,
                "message" => "Successful",
                "data" => $ENGID
            );
        } else {
            $res = array(
                "status" => false,
                "message" => "is not parm",
                "data" => $ENGID
            );
        }

        echo json_encode($res);
    }

    public function end_course_engage()
    {

        $ENGID = $this->input->get("ENGID");
        $engage_status = $this->input->get("engage_status");
        $res = array();
        if (!empty($ENGID) || !empty($engage_status)) {
            $data = array(
                'ENGID' => $ENGID,
                'engage_status' => $engage_status,
                'EndCourse' => date("Y/m/d H:i:s")
            );
            $result_data = $this->Course_model->change_status_engage($ENGID, $data);
            $res = array(
                "status" => true,
                "message" => "Successful",
                "data" => $ENGID
            );
        } else {
            $res = array(
                "status" => false,
                "message" => "is not parm",
                "data" => $ENGID
            );
        }
        echo json_encode($res);
    }

    public function review_score_engage()
    {

        $ENGID = $this->input->get("ENGID");
        $review_score = $this->input->get("review_score");
        $res = array();
        if (!empty($ENGID) || !empty($review_score)) {
            $data = array(
                'ENGID' => $ENGID,
                'review_score' => $review_score,

            );
            $result_data = $this->Course_model->review_score_engage($ENGID, $data);
            $res = array(
                "status" => true,
                "message" => "Successful",
                "data" => $ENGID
            );
        } else {
            $res = array(
                "status" => false,
                "message" => "is not parm",
                "data" => $ENGID
            );
        }
        echo json_encode($res);
    }
}
