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
                    	<h3>About US</h3>
                    </div>
                </div>
                <div class="col-md-6">
                	<div class="ct_breadcrumb">
                    	<ul>
                        	<li><a href="#">Home</a></li>
                            <li><a href="#">About us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Banner Wrap End-->
    
    <!--Content Wrap Start-->
    <div class="ct_content_wrap">
        <!--Get Started Wrap Start-->
        <section>
        	<div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="get_started_content_wrap ct_blog_detail_des_list">
                            <h3><?php echo get_phrase('About Us');?></h3>
                            <p>
                            <?php echo $this->db->get_where('website_settings', array('type' => 'about_us'))->row()->description;?>
                            </p>
                           
                        </div>
                    </div>
                
                    <div class="col-md-6">
                        <div class="get_started_video">
                                <img src="<?php echo base_url();?>uploads/logo.png" alt="">
                                <div class="get_video_icon">
                                    <a data-rel="prettyPhoto" href="<?php echo $this->db->get_where('website_settings', array('type' => 'video_link'))->row()->description;?>"><i class="fa fa-play"></i></a>
                                    <span>Watch The Video</span>
                                </div>
                            </div>
                    </div>



                    
                </div>
            </div>
        </section>
        <!--Get Started Wrap End-->
        
       
        
    </div>
    <!--Content Wrap End-->
    
    <?php include 'footer.php';?>
        
</div>
<!--Wrapper End-->



<?php include 'javascript.php';?>
