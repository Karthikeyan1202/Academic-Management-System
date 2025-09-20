<!--Banner Wrap Start-->
<div class="banner_outer_wrap">
    	<ul class="main_slider">


        <?php $select_all_banners = $this->website_model->get_all_banners_from_banner_table();
                foreach ($select_all_banners as $key => $all_banners_selected_from_table):?>
		
        	<li>
            	<img src="<?php echo base_url();?>uploads/banner_image/<?php echo $all_banners_selected_from_table['banner_image'];?>" alt="Select Banner">
                <div class="ct_banner_caption">
                    <p class="fadeInDown" style="color:white">
					<br><br><br><br><br>
					<?php echo $all_banners_selected_from_table['banner_text'];?>
					</p>
                    <a class="fadeInDown" href="<?php echo base_url();?>website/contact/">CONTACT US</a>
                </div>
            </li>
        <?php endforeach;?>
			
			
        </ul>
    </div>
    <!--Banner Wrap End-->