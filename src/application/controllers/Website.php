<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class Website extends CI_Controller { 

    function __construct() {
        parent::__construct();
        		$this->load->database();
                $this->load->library('session');	
                $this->load->model('website_model');	
    }


    public function index (){

        $page_data['page_title']= 'Home Page';

        $this->load->view('frontend/index', $page_data);
    }

    function about (){

        $page_data['page_title']= 'About Us Page';

        $this->load->view('frontend/about', $page_data);
    }

    function teacher (){

        $page_data['page_title']= 'Teacher Page';

        $this->load->view('frontend/teacher', $page_data);
    }

    function contact (){

        $page_data['page_title']= 'Contact Page';

        $this->load->view('frontend/contact', $page_data);
    }

    function subscriber(){
        $this->website_model->work_on_user_email_subscription();
    }

    function send_message(){
       $this->website_model->insert_into_contact_table();
       $this->session->set_flashdata('flash_message', get_phrase('Data sent successfully'));
       redirect(base_url(). 'website/contact', 'refresh');

    }


    function set_language($lang){
        $this->session->set_userdata('language', $lang);
        redirec(base_url(). 'website', 'refresh');
        recache();
    }


}