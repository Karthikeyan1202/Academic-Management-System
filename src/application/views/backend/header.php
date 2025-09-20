 <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
                <div class="top-left-part"><a class="logo" href="#"><b><img src="<?php echo base_url();?>uploads/logo.png" width="50" height="50" alt="home" /></b><span class="hidden-xs"><strong>KVV </strong>SCHOOL</span></a></div>
                    <ul class="nav navbar-top-links navbar-left hidden-xs">
                        <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
                        <li>
                            <form role="search" class="app-search hidden-xs">
                            <input type="text" placeholder="Search..." class="form-control"> <a href=""><i class="fa fa-search"></i></a> </form>
                        </li>
                    </ul>
            <ul class="nav navbar-top-links navbar-right pull-right">
                <!--<li class="dropdown"> 
                    <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><i class="icon-envelope"></i>
                        <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
                    </a>
                        <ul class="dropdown-menu mailbox animated bounceInDown">
                                <li>
                                    <div class="drop-title">You have 4 new messages</div>
                                </li>
                                    <li>
                                        <div class="message-center">
                                            <a href="#">
                                                <div class="user-img"> <img src="../plugins/images/users/pawandeep.jpg" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:30 AM</span> </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img"> <img src="../plugins/images/users/sonu.jpg" alt="user" class="img-circle"> <span class="profile-status busy pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Sonu Nigam</h5> <span class="mail-desc">I've sung a song! See you at</span> <span class="time">9:10 AM</span> </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img"> <img src="../plugins/images/users/arijit.jpg" alt="user" class="img-circle"> <span class="profile-status away pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Arijit Sinh</h5> <span class="mail-desc">I am a singer!</span> <span class="time">9:08 AM</span> </div>
                                            </a>
                                            <a href="#">
                                                <div class="user-img"> <img src="../plugins/images/users/pawandeep.jpg" alt="user" class="img-circle"> <span class="profile-status offline pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:02 AM</span> </div>
                                            </a>
                                        </div>
                                    </li>
                                <li>
                                <a class="text-center" href="javascript:void(0);"> <strong>See all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                            </li>
                        </ul> 
            
                </li>/.dropdown-messages -->
                    <!-- /.dropdown -->
            <li class="dropdown"> 
                <!-- <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    
                    <?php 
                    
                    if($set_language = $this->session->userdata('language')){

                    } else{

                        $set_language = $this->db->get_where('settings', array('type' => 'language'))->row()->description;
                    }

                    $list_image = $this->db->get_where('language_list', array('db_field' => $set_language))->row()->db_field;
                    $list_name =  $this->db->get_where('language_list', array('db_field' => $set_language))->row()->name;
                    
                    ?>

                    <img src="<?php echo base_url();?>optimum/flag/<?php echo $list_image;?>.png" width="16px" height="16px"> <?php echo $list_name;?> <i class="fa fa-caret-down"></i>

                </a> -->
                <ul class="dropdown-menu  animated bounceInDown">
                        
                    <?php $select_all_languages_from_laguage_table = $this->db->get_where('language_list', array('status' => 'ok'))->result_array();
                            foreach ($select_all_languages_from_laguage_table as $key => $selected_languages):?>
                        
                            <li <?php if($set_language == $selected_languages['db_field']) { ?> class="active" <?php }?>>
                            <a class="set_langs" onclick="location.reload();" data-href="<?php echo base_url();?>admin/set_language/<?php echo $selected_languages['db_field'];?>">
                              <img src="<?php echo base_url();?>optimum/flag/<?php echo $selected_languages['db_field'];?>.png" width="16px" height="16px">  <?php echo $selected_languages['name'];?>
                            </a>
                        </li>
                            <?php endforeach;?>
                        </ul>
                        
                    </li>


                    
                    <!-- /.dropdown -->
                    <li class="dropdown">


                            <?php
                            $key = $this->session->userdata('login_type') . '_id';
                            $face_file = 'uploads/' . $this->session->userdata('login_type') . '_image/' . $this->session->userdata($key) . '.jpg';
                            if (!file_exists($face_file)) {
                                $face_file = 'uploads/default.jpg';                                 
                            }
                            ?>

                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> <img src="<?php echo base_url() . $face_file;?>" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">


                                <?php 
                                $account_type   =   $this->session->userdata('login_type');
                                $account_id     =   $account_type.'_id';
                                $name           =   $this->crud_model->get_type_name_by_id($account_type , $this->session->userdata($account_id), 'name');
                                echo $name;
                                ?>


                        </b> </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">
                            <li>
                            <?php if($account_type == 'parent'):?>
                            <a href="<?php echo base_url();?>parents/manage_profile"><i class="ti-user"></i> Edit Profile</a>
                            <?php endif;?>
                            <?php if($account_type != 'parent'):?>
                            <a href="<?php echo base_url();?><?php echo $this->session->userdata('login_type'); ?>/manage_profile"><i class="ti-user"></i> Edit Profile</a>
                            <?php endif;?>
                            </li>
                            <!--<li><a href="javascript:void(0)"><i class="ti-email"></i>  Inbox</a></li>
                            <li><a href="javascript:void(0)"><i class="ti-settings"></i>  Account Setting</a></li>-->
                            <li><a href="<?php echo base_url();?>login/logout"><i class="fa fa-power-off"></i>  Logout</a></li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <li class="right-side-toggle"> <a class="waves-effect waves-light" href="javascript:void(0)"><i class="ti-settings"></i></a></li>
                    <!-- /.dropdown -->
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
    
      