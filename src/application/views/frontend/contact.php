    <?php include 'css.php';?>

    <!--Wrapper Start-->  
    <div class="ct_wrapper">
        
    <?php include 'header.php';?>
            
    <?php include 'navigation.php';?>
        </header>
        <!--Header Wrap End-->
    
    <!--Banner Wrap Start-->
    <section class="sub_banner_wrap">
    	<div class="container">
        	<div class="row">
            	<div class="col-md-6">
                	<div class="sub_banner_hdg">
                    	<h3>Contact Us</h3>
                    </div>
                </div>
                <div class="col-md-6">
                	<div class="ct_breadcrumb">
                    	<ul>
                        	<li><a href="#">Home</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Banner Wrap End-->
    
    <!--Content Wrap Start-->
    <div class="ct_content_wrap">
        <!--Map Wrap Start-->
        <div><?php echo $this->db->get_where('website_settings', array('type' => 'map_code'))->row()->description; ?></div>
        <!--Map Wrap End-->
        
        <!--Get in Touch With Us Wrap Start-->
        <section>
        	<div class="container">
            	<div class="get_touch_wrap">
                	<h4><?php echo get_phrase('Get In Touch');?>:</h4>
                    <p><?php echo $this->db->get_where('website_settings', array('type' => 'contact_message'))->row()->description; ?></p>
                </div>
                <div class="row">
                	<div class="col-md-6">
                    	<div class="ct_contact_form">
                        	<form action="<?php echo base_url();?>website/send_message/" method="post">
                            	<div class="form_field">
                                	<label class="fa fa-user"></label>
                                	<input name="visitor_name" class="conatct_plchldr" type="text" placeholder="Your Name">
                                </div>
                                <div class="form_field">
                                	<label class="fa fa-envelope-o"></label>
                                	<input name="visitor_email" class="conatct_plchldr" type="text" placeholder="Email Address">
                                </div>
                                <div class="form_field">
                                	<label class="fa fa-edit"></label>
                                	<textarea name="visitor_content" class="conatct_plchldr" placeholder="Write Detail"></textarea>
                                </div>
                                <div class="form_field">
                                	<button><?php echo get_phrase('Send Message');?> <i class="fa fa-arrow-right"></i> </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
						<div class="bottom_border">
							<div class="row">
								<div class="col-md-6">
									<div class="ct_contact_address">
										<h5><i class="fa fa-map-o"></i><?php echo get_phrase('Address');?></h5>
										<p><?php echo $this->db->get_where('settings', array('type' => 'address'))->row()->description; ?></p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="ct_contact_address">
										<h5><i class="fa fa-envelope-o"></i><?php echo get_phrase('Fax & Email');?></h5>
										<ul class="fax_info">
											<li><a href="tel:<?php echo $this->db->get_where('settings', array('type' => 'phone'))->row()->description; ?>"><?php echo $this->db->get_where('settings', array('type' => 'phone'))->row()->description; ?></a></li>
										</ul>
										<li><a href="mailto:<?php echo $this->db->get_where('settings', array('type' => 'system_email'))->row()->description; ?>"><?php echo $this->db->get_where('settings', array('type' => 'system_email'))->row()->description; ?></a></li>
									</div>
								</div>
							</div>
						</div>

                </div>
            </div>
        </section>
        <!--Get in Touch With Us Wrap End-->
        
        
    </div>
    <!--Content Wrap End-->
    
    <?php include 'footer.php';?>
        
</div>
<!--Wrapper End-->



<?php include 'javascript.php';?>