<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Website_model extends CI_Model { 
	
	function __construct()
    {
        parent::__construct();
    }


    function get_all_banners_from_banner_table() {
        $query = $this->db->get('banner_table');
        return $query->result_array();
    }

    function get_all_testimonies_from_testimony_table() {
        $query = $this->db->get('testimony_table');
        return $query->result_array();
    }

    function sell_all_information_in_subscriber_table() {
        $query = $this->db->get('subscriber_table');
        return $query->result_array();
    }

    function select_all_teachers_from_teache_table() {
        $query = $this->db->get('teacher');
        return $query->result_array();
    }

    function work_on_user_email_subscription(){
        $safe = 'yes';
        $char = '';
        foreach($_POST as $row){
            if (preg_match('/[\'^":()?}{#~><>|=+¬]/', $row,$match))
            {
                $safe = 'no';
                $char = $match[0];
            }
        }

        $this->load->library('form_validation');
		$this->form_validation->set_rules('email', 'Email', 'required');
		if ($this->form_validation->run() == FALSE){
			echo validation_errors();
		}
		else{
            if($safe == 'yes'){
    			$subscribe_num = $this->session->userdata('subscriber');
    			$email         = $this->input->post('email');
    			$subscriber    = $this->db->get('subscriber_table')->result_array();
    			$exist        = 'no';
    			foreach ($subscriber as $row) {
    				if ($row['email'] == $email) {
    					$exist = 'yes';
    				}
    			}
    			if ($exist == 'yes') {
    				$this->session->set_flashdata('error_message', get_phrase('You have subsribed already'));
        			redirect(base_url() . 'website/index', 'refresh');
    			} else if ($subscribe_num >= 3) {
    				$this->session->set_flashdata('error_message', get_phrase('Your session already exist'));
        			redirect(base_url() . 'website/index', 'refresh');
    			} else if ($exist == 'no') {
    				$subscribe_num = $subscribe_num + 1;
    				$this->session->set_userdata('subscriber', $subscribe_num);
    				$page_data['email'] = $email;
    				$this->db->insert('subscriber_table', $page_data);
    				$this->session->set_flashdata('flash_message', get_phrase('You have successfully subsribed'));
        			redirect(base_url() . 'website/index', 'refresh');
    			}
            } else {
					$this->session->set_flashdata('error_message', get_phrase('Disallowed Charecter : " '.$char.' " in the POST'));
        			redirect(base_url() . 'website/index', 'refresh');
            }
		}
    }

    function insert_into_contact_table(){
        $page_data['visitor_name']      = $this->input->post('visitor_name');
        $page_data['visitor_email']     = $this->input->post('visitor_email');
        $page_data['visitor_content']   = $this->input->post('visitor_content');

        $this->db->insert('contact_table', $page_data);
    }

}