<!--Footer Wrap Start-->
<footer>
    	<!--NewsLetter Wrap Start-->
        <div class="ct_newsletter_wrap">
        	<div class="container">
            	<div class="newletter_des">
                	<h5><?php echo get_phrase('Subscribe Our Weekly Newsletter');?></h5>
                    <form action="<?php echo base_url();?>website/subscriber/" method="post">
                    	<label class="fa fa-envelope-o"></label>
                    	<input type="text" name="email" placeholder="Enter Your Email" required>
                        <button><?php echo get_phrase('Signup');?></button>
                    </form>
                </div>
            </div>
        </div>
        <!--NewsLetter Wrap End-->
        
        <style>
    .resize{
        height:50px !important;
        width: 50px !important;
    }
    </style>

        <!--Footer Col Wrap Start-->
        <div class="ct_footer_bg">
        	<div class="container">
            	<div class="row">
                	<div class="col-md-3 col-sm-6">
                    	<div class="footer_col_1 widget">
                        	<a href="#"><img src="<?php echo base_url();?>uploads/logo.png" alt="School Logo" class="resize"></a>
                            <p><?php echo substr($this->db->get_where('website_settings', array('type' => 'about_us'))->row()->description, 0, 150);?>...</p>
                            <span><?php echo get_phrase('Email');?> : <a href="mailto:<?php echo $this->db->get_where('settings', array('type' => 'system_email'))->row()->description; ?>"><?php echo $this->db->get_where('settings', array('type' => 'system_email'))->row()->description; ?></a></span>
                            <div class="foo_get_qoute">
                            	<a href="<?php echo base_url();?>website/contact"><?php echo get_phrase('Get In Touch');?></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-6">
                    	<div class="foo_col_2 widget">
                        	<h5><?php echo get_phrase('More pages');?></h5>
                            <ul>
                            	<li><a href="<?php echo base_url();?>website/index"><?php echo get_phrase('Home');?></a></li>
                                <li><a href="<?php echo base_url();?>website/about"><?php echo get_phrase('About Us');?></a></li>
                                <li><a href="<?php echo base_url();?>website/contact"><?php echo get_phrase('Contact');?></a></li>
                                <li><a href="<?php echo base_url();?>login"><?php echo get_phrase('Login');?></a></li>
                            </ul>
                        </div>
                    </div>
                    
                     <div class="col-md-3 col-sm-6">
                    	<div class="foo_col_2 widget">
                        	<h5><?php echo get_phrase('Quick Links');?></h5>
                            <ul>
                                <li><a href="<?php echo base_url();?>website/index"><?php echo get_phrase('Home');?></a></li>
                                <li><a href="<?php echo base_url();?>login"><?php echo get_phrase('Login');?></a></li>
                                <li><a href="<?php echo base_url();?>website/about"><?php echo get_phrase('About Us');?></a></li>
                                <li><a href="<?php echo base_url();?>website/contact"><?php echo get_phrase('Contact');?></a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-6">
                    	<div class="foo_col_4 widget">
                        	<h5><?php echo get_phrase('Facebook Page');?></h5>
                            <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2F<?php echo $this->db->get_where('website_settings', array('type' => 'facebook_like_code'))->row()->description;?>&width=260&height=260&colorscheme=light&show_faces=true&header=true&stream=false&show_border=true&appId=194009127410715" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:260px; height:200px;" allowTransparency="true"></iframe>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!--Footer Col Wrap End-->
        
        <!--Footer Copyright Wrap Start-->
        <div class="ct_copyright_bg">
        	<div class="container">
            	<div class="row">
                	<div class="col-md-6">
                    	<div class="copyright_text">
                      <a href="#"><?php echo $this->db->get_where('settings', array('type' => 'footer'))->row()->description;?>.  <?php echo date('Y-m-d');?></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                    	<div class="copyright_social_icon">
                        	<ul>
                            	<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            	<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            	<li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Footer Copyright Wrap End-->
        <div class="back_to_top">
            <a href="#"><i class="fa fa-angle-up"></i></a>
        </div>
    </footer>
    <!--Footer Wrap End-->
   