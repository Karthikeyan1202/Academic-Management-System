<div class="row">
    <div class="col-sm-12">
		<div class="panel panel-info">
            <div class="panel-body table-responsive">
                            <section class="m-t-40">
                                <div class="sttabs tabs-style-linetriangle">
                                    <nav>
                                        <ul>
                                            <li><a href="#section-linetriangle-1"><span><?php echo get_phrase('General Settings');?></span></a></li>
                                            <li><a href="#section-linetriangle-2"><span><?php echo get_phrase('Upload Banner');?></span></a></li>
                                            <li><a href="#section-linetriangle-3"><span><?php echo get_phrase('Testimonies');?></span></a></li>
                                            <li><a href="#section-linetriangle-4"><span><?php echo get_phrase('Subscriber');?></span></a></li>
                                            <li><a href="#section-linetriangle-5"><span><?php echo get_phrase('Contact Us');?></span></a></li>
                                        </ul>
                                    </nav>
                                    <div class="content-wrap">
                                        <section id="section-linetriangle-1">
                                         
                                            <?php echo form_open(base_url() . 'admin/websiteSetting/save_generalSetting/' , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                                                
                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('About Us');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea id="mymce" name="about_us"><?php echo $this->db->get_where('website_settings', array('type' => 'about_us'))->row()->description;?></textarea>
                                                        </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('YouTube Video Link');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea class="form-control" name="video_link"><?php echo $this->db->get_where('website_settings', array('type' => 'video_link'))->row()->description;?></textarea>
                                                        </div>
                                                </div>

                                                
                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Mission');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea class="form-control" name="mission"><?php echo $this->db->get_where('website_settings', array('type' => 'mission'))->row()->description;?></textarea>
                                                        </div>
                                                </div>

                                                
                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Vission');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea class="form-control" name="vission"><?php echo $this->db->get_where('website_settings', array('type' => 'vission'))->row()->description;?></textarea>
                                                        </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Goal');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea class="form-control" name="goal"><?php echo $this->db->get_where('website_settings', array('type' => 'goal'))->row()->description;?></textarea>
                                                        </div>
                                                </div>

                                                
                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Testimony Message');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea class="form-control" name="testimony_message"><?php echo $this->db->get_where('website_settings', array('type' => 'testimony_message'))->row()->description;?></textarea>
                                                        </div>
                                                </div>

                                                
                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Map Code');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea class="form-control" name="map_code"><?php echo $this->db->get_where('website_settings', array('type' => 'map_code'))->row()->description;?></textarea>
                                                        </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Facebook Like Code');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea class="form-control" name="facebook_like_code"><?php echo $this->db->get_where('website_settings', array('type' => 'facebook_like_code'))->row()->description;?></textarea>
                                                            <p style="color:green"> Please make sure your link looks like this: https://www.facebook.com/kvvschool WHERE kvvschool is your facebook group name</P>
                                                        </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Contact Welcome Message');?></label>
                                                        <div class="col-sm-12">
                                                            <textarea class="form-control" name="contact_message"><?php echo $this->db->get_where('website_settings', array('type' => 'contact_message'))->row()->description;?></textarea>
                                                        </div>
                                                </div>

                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm"><i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('save');?></button>
                                                </div>

                                            <?php echo form_close();?>
                                        </section>
                                        <section id="section-linetriangle-2">
                                        <?php echo form_open(base_url() . 'admin/websiteSetting/save_banner/' , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top', 'enctype' => 'multipart/form-data'));?>

                                            <div class="form-group">
                                                <label class="col-md-12" for="example-text"><?php echo get_phrase('Select Banner');?></label>
                                                    <div class="col-sm-12">
                                                        <input type="file" name="banner_image" class="dropify" required>
                                                    <p style="color:red">Ensure you upload banner image with size 1920 x 623</p>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-12" for="example-text"><?php echo get_phrase('Banner Text');?></label>
                                                    <div class="col-sm-12">
                                                       <input class="form-control" name="banner_text" >
                                                    </div>
                                            </div>

                                            <div class="form-group">
                                                    <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm"><i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('save');?></button>
                                            </div>
                                            <?php echo form_close();?>
                                        <hr>
                                        <table id="example" class="display nowrap" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th><div><?php echo get_phrase('Banner Image');?></div></th>
                                                <th><div><?php echo get_phrase('Banner Text');?></div></th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $select_banner = $this->db->get('banner_table')->result_array();
                                            foreach($select_banner as $key => $banner):?>
                                                <tr>
                                                    <td><img src="<?php echo base_url();?>uploads/banner_image/<?php echo $banner['banner_image'];?>" class="img-circle" width="50px" height="50px"></td>
                                                    <td><?php echo $banner['banner_text'];?></td>
                                                    
                                                </tr>
                                            <?php endforeach;?>
                                        </tbody>
                                    </table>    
                                        </section>
                                        <section id="section-linetriangle-3">
                                           
                                        <table id="example" class="display nowrap" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th><div><?php echo get_phrase('Parent Name');?></div></th>
                                                <th><div><?php echo get_phrase('Content');?></div></th>
                                                <th><div><?php echo get_phrase('Status');?></div></th>
                                                <th><div><?php echo get_phrase('Actions');?></div></th>


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $select_testimonies = $this->db->get('testimony_table')->result_array();
                                            foreach($select_testimonies as $key => $testimony):?>
                                                <tr>
                                                    <td><?php echo $this->crud_model->get_type_name_by_id('parent', $testimony['parent_id']);?></td>
                                                    <td><?php echo $testimony['content'];?></td>
                                                    <td>
                                                    <span class="label label-<?php if($testimony['status'] == 'Approved') echo 'success'; else echo 'warning';?>"><?php echo $testimony['status'];?></span>
                                                    </td>
                                                    <td>
                                                    <a onclick="showAjaxModal('<?php echo base_url();?>modal/popup/testimony_status/<?php echo $testimony['testimony_id'];?>')" class="btn btn-info btn-circle btn-xs"><i class="fa fa-edit"></i></a>
                                                    <a href="<?php echo base_url();?>admin/websiteSetting/delete/<?php echo $testimony['testimony_id'];?>" onclick="return confirm('Are you sure want to delete?');" class="btn btn-danger btn-circle btn-xs" style="color:white"><i class="fa fa-times"></i></a>
                                                    </td>
                                                    
                                                </tr>
                                            <?php endforeach;?>
                                        </tbody>
                                    </table>    
                                           
                                           </section>
                                        <section id="section-linetriangle-4">
                                           
                                        <table id="example23" class="display nowrap" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th><div><?php echo get_phrase('Email');?></div></th>
                                               


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $counter = 1; $select_subscribers = $this->website_model->sell_all_information_in_subscriber_table();
                                            foreach($select_subscribers as $key => $subscriber):?>
                                                <tr>
                                                    <td><?php echo $subscriber['email'];?></td>   
                                                </tr>
                                            <?php endforeach;?>
                                        </tbody>
                                    </table>    
                                           
                                           
                                        </section>
                                        <section id="section-linetriangle-5">

                                        <table id="example23" class="display nowrap" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th><?php echo get_phrase('Visitor Name');?></div></th>
                                                <th><div><?php echo get_phrase('Visitor Email');?></div></th>
                                                <th><div><?php echo get_phrase('Content');?></div></th>
                                               


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $contact_table = $this->db->get('contact_table')->result_array();
                                            foreach($contact_table as $key => $contact_table):?>
                                                <tr>
                                                    <td><?php echo $contact_table['visitor_name'];?></td>
                                                    <td><?php echo $contact_table['visitor_email'];?></td>
                                                    <td><?php echo $contact_table['visitor_content'];?></td>
                                                </tr>
                                            <?php endforeach;?>
                                        </tbody>
                                    </table>       
                                        
                                        </section>
                                    </div>
                                    <!-- /content -->
                                </div>
                                <!-- /tabs -->
                            </section>
            </div>
        </div>
    </div>
</div>