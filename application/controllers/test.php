<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class test extends CI_Controller {

    public function index()
    {

	}

    public function test_view($view){
        $this->load->view($view);
    }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */