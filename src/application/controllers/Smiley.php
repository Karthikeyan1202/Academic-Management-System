<?php 
class Smiley extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
       // $this->load->helper(array('form', 'url'));
        $this->load->helper('smiley');
        $this->load->library('table');
    }


    public function index()
    {
        $image_array = get_clickable_smileys(base_url().'assets/images/smileys/', 'comments');
        $col_array = $this->table->make_columns($image_array, 8);
        $page_data['smiley_table'] = $this->table->generate($col_array);

        $this->load->view('index',$page_data);

    }
}
