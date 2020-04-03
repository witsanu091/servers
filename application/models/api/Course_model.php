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

        $this->db->order_by('avgscore', 'DESC');

        $query = $this->db->get('course_view');

        return $query->result();
    }

    public function connect_trainer($data)
    {
        $this->db->insert('engage', $data);
    }

    //---------------------------------------------//



}
