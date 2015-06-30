<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller
{
    public function index()
    {
        session_start();
        if ($this->session->logged_in) {
            $this->load - view('welcome');
        } else {
            redirect('user/login', 'refresh');
        }
    }

    public function login()
    {
        $username = $this->input->post('username');
        $password = sha1($this->input->post('password'));

        $this->load->model('user');
        $user = $this->user->get_user_details($this->user->get_user_id($username));

        if($password==$user->password){
            $sessionData = array(
                'username'  => $username,
                'id' => $user->id,
                'logged_in' => TRUE
            );
            $this->session->set_userdata($sessionData);
            $this->load->view('welcome');
        }else{
            echo 'fail';
        }

    }

}

/* End of file users.php */
/* Location: ./application/controllers/users.php */