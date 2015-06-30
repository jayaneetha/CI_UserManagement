<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Model
{
    public function get_user_details($id)
    {
        $this->db->from('users');
        $this->db->where('id', $id);
        return $this->db->get()->result()[0];

    }

    public function get_user_id($username)
    {
        $this->db->select('id');
        $this->db->from('users');
        $this->db->where('username', $username);
        return $this->db->get()->result()[0]->id;
    }

}

/* End of file user.php */
/* Location: ./application/models/user.php */