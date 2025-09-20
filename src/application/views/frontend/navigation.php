<!--Navigation Wrap Start-->
<div class="logo_nav_outer_wrap">
        	<div class="container">
                <div class="logo_wrap">
                    <a href="#"><img src="<?php echo base_url();?>uploads/logo.png" alt="School Logo" width="40px" height="40px"></a>
                </div>
                
               
                <nav class="main_navigation">
                    <ul>
                        <li><a href="<?php echo base_url();?>website/index"><?php echo get_phrase('Home');?><span><?php echo get_phrase('Main Page');?></span></a></li>
                        <li><a href="<?php echo base_url();?>website/about"><?php echo get_phrase('About');?><span><?php echo get_phrase('About Us');?></span></a></li>
                        <li><a href="<?php echo base_url();?>website/teacher"><?php echo get_phrase('Teachers');?><span><?php echo get_phrase('Our Teachers');?></span></a></li>
						<li><a href="<?php echo base_url();?>website/contact"><?php echo get_phrase('Contact');?><span><?php echo get_phrase('Contact Us');?></span></a></li>
						
                        <?php if ($this->session->userdata('admin_id') != null):?>
                        <li><a href="<?php echo base_url();?>login"><?php echo get_phrase('Dashboard');?><span><?php echo get_phrase('Goto Dashbaord');?></span></a></li>
                        <?php endif;?>
                        <?php if ($this->session->userdata('admin_id') == null):?>
                        <li><a href="<?php echo base_url();?>login"><?php echo get_phrase('Login');?><span><?php echo get_phrase('All Users Login');?></span></a></li>
                        <?php endif;?>
						
                        <li class="dropdown"> 
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                    
                    <?php 
                    
                    if($set_language = $this->session->userdata('language')){
                    } else{
                        $set_language = $this->db->get_where('settings', array('type' => 'language'))->row()->description;
                    }
                    $list_image = $this->db->get_where('language_list', array('db_field' => $set_language))->row()->db_field;
                    $list_name =  $this->db->get_where('language_list', array('db_field' => $set_language))->row()->name;
                    ?>
                    <img src="<?php echo base_url();?>optimum/flag/<?php echo $list_image;?>.png" width="16px" height="16px"> <?php echo $list_name;?> <i class="fa fa-caret-down"></i>
                </a>
                    <ul class="dropdown-menu">
                        
                    <?php $select_all_languages_from_laguage_table = $this->db->get_where('language_list', array('status' => 'ok'))->result_array();
                            foreach ($select_all_languages_from_laguage_table as $key => $selected_languages):?>
                        
                            <li <?php if($set_language == $selected_languages['db_field']) { ?> class="active" <?php }?>>
                            <a class="set_langs" data-href="<?php echo base_url();?>website/set_language/<?php echo $selected_languages['db_field'];?>">
                              <img src="<?php echo base_url();?>optimum/flag/<?php echo $selected_languages['db_field'];?>.png" width="16px" height="16px">  <?php echo $selected_languages['name'];?>
                            </a>
                        </li>
                            <?php endforeach;?>
                        </ul>
                        <?php echo get_phrase('Change Language');?>
                        
                    </li>
                                
                    </ul>
                </nav>
                <!--DL Menu Start-->
                <div id="kode-responsive-navigation" class="dl-menuwrapper">
                    <button class="dl-trigger">Open Menu</button>
                    <ul class="dl-menu">
                        <li class="active"><a href="<?php echo base_url();?>website/index"><?php echo get_phrase('Home');?></a></li>
						 <li class="menu-item kode-parent-menu"><a href="<?php echo base_url();?>website/about"><span><?php echo get_phrase('About Us');?></a></li>
                        <li class="menu-item kode-parent-menu"><a href="<?php echo base_url();?>website/teacher"><span><?php echo get_phrase('Teachers');?></a></li>
                        <li class="menu-item kode-parent-menu"><a href="<?php echo base_url();?>website/contact"><span><?php echo get_phrase('Contact Us');?></a></li>
						<li class="menu-item kode-parent-menu"><a href="<?php echo base_url();?>login"><span><?php echo get_phrase('Login');?></a></li>
						<li class="menu-item kode-parent-menu"><a href="#"><span><?php echo get_phrase('Language');?></a>
                        <li class="dropdown"> 
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                    
                            <?php 
                            if($set_language = $this->session->userdata('language')){
                            } else{
                                $set_language = $this->db->get_where('settings', array('type' => 'language'))->row()->description;
                            }
                            $list_image = $this->db->get_where('language_list', array('db_field' => $set_language))->row()->db_field;
                            $list_name =  $this->db->get_where('language_list', array('db_field' => $set_language))->row()->name;
                            ?>
                            <img src="<?php echo base_url();?>optimum/flag/<?php echo $list_image;?>.png" width="16px" height="16px"> <?php echo $list_name;?> <i class="fa fa-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">  
                            <?php $select_all_languages_from_laguage_table = $this->db->get_where('language_list', array('status' => 'ok'))->result_array();
                                    foreach ($select_all_languages_from_laguage_table as $key => $selected_languages):?>
                                
                                    <li <?php if($set_language == $selected_languages['db_field']) { ?> class="active" <?php }?>>
                                    <a class="set_langs" data-href="<?php echo base_url();?>website/set_language/<?php echo $selected_languages['db_field'];?>">
                                    <img src="<?php echo base_url();?>optimum/flag/<?php echo $selected_languages['db_field'];?>.png" width="16px" height="16px">  <?php echo $selected_languages['name'];?>
                                    </a>
                                </li>
                            <?php endforeach;?>
                        </ul>
                        <?php echo get_phrase('Change Language');?>
                    </li>        
                    </ul>
                    </li>
                    </ul>
                </div>
                <!--DL Menu END-->
            </div>
        </div>
        <!--Navigation Wrap End-->

