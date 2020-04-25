<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Course_model extends CI_Model
{

    public function get_coursetype_all()
    {
        $query = $this->db->get('course_type');
        return $query->result();
    }

    public function get_cousre_by_id($cid)
    {
        $this->db->select('*');
        $this->db->where('CID', $cid);
        $query = $this->db->get('course');

        return $query->result();
    }

    public function get_cousre_filter($filter)
    {
        $this->db->select('*');

        if (!empty($filter['CTID'])) {
            $this->db->where('CTID', $filter['CTID']);
        }
        if (!empty($filter['gender'])) {
            $this->db->where('gender', $filter['gender']);
        }
        if ($filter['LID']) {
            $this->db->where('LID', $filter['LID']);
        }

        $this->db->order_by('avgscore', 'DESC');

        $query = $this->db->get('course_view');

        return $query->result();
    }

    public function connect_trainer($data)
    {
        $this->db->insert('engage', $data);
    }



    public function show_engage($filter = array())
    {
        $this->db->select('*');
        $this->db->join('trainer_course_aviable', 'engage.TCID = trainer_course_aviable.TCID');
        $this->db->join('course', 'trainer_course_aviable.CID = course.CID');
        if (!empty($filter['UID'])) {
            $this->db->where('engage.UID', $filter['UID']);
        }
        if (!empty($filter['TID'])) {
            $this->db->where('trainer_course_aviable.TID', $filter['TID']);
        }

        if ($filter['seeby'] == 't') {

            $this->db->join('user', 'engage.UID = user.id');
        } else {
            $this->db->join('trainer', 'trainer_course_aviable.TID = trainer.id');
        }

        $this->db->join('location', 'trainer_course_aviable.LID = location.LID');
        $this->db->order_by('ENGID', 'DESC');


        $query = $this->db->get('engage');

        return $query->result();
    }

    public function show_end_engage($data)
    {
        $this->db->select('*');
        $this->db->join('trainer_course_aviable', 'engage.TCID = trainer_course_aviable.TCID');
        $this->db->join('course', 'trainer_course_aviable.CID = course.CID');
        $this->db->join('trainer', 'trainer_course_aviable.TID = trainer.id');

        if (!empty($data['UID'])) {
            $this->db->where('engage.UID', $data['UID']);
        }
        $this->db->where("EndCourse !=", NULL);
        $this->db->where("review_score =", NULL);
        $this->db->where("engage_status =", 4);

        $this->db->join('location', 'trainer_course_aviable.LID = location.LID');

        $query = $this->db->get('engage');

        return $query->result();
    }

    public function add_course($TID, $CID, $TCPrice, $TCDetails, $LID, $SCHDID)
    {
        if (!empty($TID) || !empty($CID)  || !empty($TCPrice) || !empty($TCDetails) || !empty($LID)) {
            $data = array(
                'TID' => $TID,
                'CID' => $CID,
                'TCPrice' => $TCPrice,
                'TCDetails' => $TCDetails,
                'LID' => $LID,
                'SCHDID' => $SCHDID == NULL ? 0 : $SCHDID
            );
            $this->db->insert('trainer_course_aviable', $data);
            return $data;
        }
    }

    public function show_course_trainer($filter)
    {
        $this->db->select('*');
        $this->db->join('course', 'trainer_course_aviable.CID = course.CID');
        $this->db->join('course_type', 'course.CTID = course_type.CTID');
        $this->db->join('location', 'trainer_course_aviable.LID = location.LID');
        if (!empty($filter['TID'])) {
            $this->db->where('TID', $filter['TID']);
            $this->db->order_by('TCID');
            // $this->db->order_by('TCID', 'DESC');
        }
        $query = $this->db->get('trainer_course_aviable');

        return $query->result();
    }

    public function get_course_id($CTID)
    {
        $this->db->select('*');
        $this->db->where('CTID', $CTID['CTID']);
        $query = $this->db->get('course');
        return $query->result();
    }

    public function get_location_id()
    {
        $query = $this->db->get('location');
        return $query->result();
    }

    public function change_status_engage($ENGID, $data)
    {
        $this->db->where('ENGID', $ENGID);
        $this->db->update('engage', $data);

        return true;
    }

    public function review_score_engage($ENGID, $data)
    {
        $this->db->where('ENGID', $ENGID);
        $this->db->update('engage', $data);

        return true;
    }
}
