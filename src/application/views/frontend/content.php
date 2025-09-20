 <!--Content Wrap Start-->
 <div class="ct_content_wrap">
        <!--Get Started Wrap Start-->
        <section>
        	<div class="container">
            	<div class="get_started_outer_wrap">
            		<div class="row">
                        <div class="col-md-6">
                            <div class="get_started_content_wrap ct_blog_detail_des_list">
                            <h3><?php echo get_phrase('Brief Information About Us');?></h3>
                                <p><?php echo substr($this->db->get_where('website_settings', array('type' => 'about_us'))->row()->description, 0, 1000);?></p>
								<p><a href="<?php echo base_url();?>website/about/" style="color:grey"><?php echo get_phrase('Read More');?>&nbsp;<i class="fa fa-arrow-right"></i></a></p>
                               
                            </div>
                        </div>
                    
                        <div class="col-md-6">
                            <div class="get_started_video">
                                <img src="<?php echo base_url();?>uploads/logo.png" alt="">
                                <div class="get_video_icon">
                                    <a data-rel="prettyPhoto" href="<?php echo $this->db->get_where('website_settings', array('type' => 'video_link'))->row()->description;?>"><i class="fa fa-play"></i></a>
                                    <span><?php echo get_phrase('Watch The School Video');?></span>
                                </div>
                            </div>
                        </div>
                	</div>
                </div>
                
                <div class="row">
                	<div class="col-md-4 col-sm-6">
                    	<div class="get_started_services">
                        	<div class="get_started_icon">
                            	<i class="fa fa-paper-plane-o"></i>
                            </div>
                            <div class="get_icon_des">
                            	<h5><?php echo get_phrase('Our Mission');?></h5>
                                <p><?php echo $this->db->get_where('website_settings', array('type' => 'mission'))->row()->description;?></p>
                                <a href="#">View More <i class="fa fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                    	<div class="get_started_services">
                        	<div class="get_started_icon">
                            	<i class="fa fa-bookmark-o"></i>
                            </div>
                            <div class="get_icon_des">
                            	<h5><?php echo get_phrase('Our Vission');?></h5>
                                <p><?php echo $this->db->get_where('website_settings', array('type' => 'vission'))->row()->description;?></p>
                                <a href="#">View More <i class="fa fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                    	<div class="get_started_services">
                        	<div class="get_started_icon">
                            	<i class="fa fa-television"></i>
                            </div>
                            <div class="get_icon_des">
                            	<h5><?php echo get_phrase('Our Goal');?></h5>
                                <p><?php echo $this->db->get_where('website_settings', array('type' => 'goal'))->row()->description;?></p>
                                <a href="#">View More <i class="fa fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </section>
        <!--Get Started Wrap End-->
        
        <!--Courses By Subject Wrap Start-->
        <section class="ct_courses_subject_bg">
        	<div class="container">
            	<!--Heading Style 1 Wrap Start-->
                <div class="ct_heading_1_wrap ct_white_hdg">
                	<h3><?php echo get_phrase('Our School Subjects');?></h3>
                    <span><img src="<?php echo base_url();?>uploads/hdg-01.png" alt=""></span>
                </div>
                <!--Heading Style 1 Wrap End-->
                
                <!--Courses Subject List Wrap Start-->
                <div class="courses_subject_carousel owl-carousel">

                <?php $select_all_subjects = $this->db->get('subject')->result_array();
                            foreach ($select_all_subjects as $key => $all_subject_selected):?>
                    <div class="item">
                        <div class="course_subject_wrap ct_bg_6">
                            <i class="fa fa-book"></i>
                            <div class="course_subject_des">
                                <p><span><?php echo $all_subject_selected['name'];?></span><?php echo $this->db->get_where('class', array('class_id' => $all_subject_selected['class_id']))->row()->name;?></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach;?>
                   
                   
                </div>
                <!--Courses Subject List Wrap End-->
            </div>
        </section>
        <!--Courses By Subject Wrap End-->
        
       
        
        <!--Testimonial Wrap Start-->
        <section class="ct_testimonial_bg">
        	<div class="container">
            	<!--Heading Style 1 Wrap Start-->
                <div class="ct_heading_1_wrap ct_white_hdg">
                	<h3><?php echo get_phrase('Testimonials');?></h3>
                    <p><?php echo $this->db->get_where('website_settings', array('type' => 'testimony_message'))->row()->description;?></p>
                    <span><img src="<?php echo base_url();?>uploads/hdg-01.png" alt=""></span>
                </div>
                <!--Heading Style 1 Wrap End-->
    <style>
    .resize{
        height:80px !important;
        width: 80px !important;
    }
    </style>
                <!--Testimonial List Wrap Start-->
                <div class="testimonial_carousel owl-carousel">
                <?php $select_all_testimonies = $this->website_model->get_all_testimonies_from_testimony_table();
                foreach ($select_all_testimonies as $key => $all_testimonies_selected_from_table):?>

                	<div class="item">
                    	<div class="testimonial_wrap">
                        	<figure>
                            	<img src="<?php echo $this->crud_model->get_image_url('parent', $all_testimonies_selected_from_table['parent_id']);?>" alt="Parent Image" class="resize">
                            </figure>
                            <p><?php echo $all_testimonies_selected_from_table['content'];?></p>
						<span><b>Name</b>, <?php echo $this->db->get_where('parent', array('parent_id' => $all_testimonies_selected_from_table['parent_id']))->row()->name;?></span>
                        </div>
                    </div>
                <?php endforeach;?>

                </div>
                <!--Testimonial List Wrap End-->
                
            </div>
        </section>
        <!--Testimonial Wrap End-->
     
        
       <!--Figures & Facts Wrap Start-->
        <section class="ct_facts_bg">
		
            <ul>
                <li>
				
                    <i class="icon-avatar" style="color:#e625ea"></i>
                    <h2 class="counter" style="color:#e625ea"><?php echo $this->db->get('teacher')->num_rows();?></h2>
                    <span style="color:#e625ea"><?php echo get_phrase('Our Teachers');?></span>
                </li>
                <li>
                    <i class="icon-command" style="color:#8226f5"></i>
                    <h2 class="counter" style="color:#8226f5"><?php echo $this->db->get('student')->num_rows();?></h2>
                    <span style="color:#8226f5"><?php echo get_phrase('Student Enrolled');?></span>
                </li>
                <li>
                    <i class="icon-open-book"  style="color:#e625ea"></i>
                    <h2 class="counter"  style="color:#e625ea"><?php echo $this->db->get('alumni')->num_rows();?></h2>
                    <span style="color:#e625ea"><?php echo get_phrase('Passing to Universities');?></span>
                </li>
                <li>
                    <i class="icon-pulse" style="color:#8226f5"></i>
                    <h2 class="counter" style="color:#8226f5"><?php echo $this->db->get('parent')->num_rows();?></h2>
                    <span style="color:#8226f5"><?php echo get_phrase('Satisfied Parents');?></span>
                </li>
            </ul>
        </section>
        <!--Figures & Facts Wrap End-->
    </div>
    <!--Content Wrap End-->