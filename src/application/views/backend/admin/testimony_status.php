<?php $select = $this->db->get_where('testimony_table', array('testimony_id' => $param2))->result_array();
            foreach ($select as $key => $select):?>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-info">
                            <div class="panel-body table-responsive">
                                <?php echo form_open(base_url(). 'admin/websiteSetting/update_status/' . $param2 , array('class' => 'form-horizontal form-groups-bordered validate'));?>

                                    <div class="form-group">
                                            <label class="col-md-12" for="example-text"><?php echo get_phrase('Status');?></label>
                                        <div class="col-sm-12">
                                            <select class="form-control" name="status">

                                            <option value="Approved"<?php if($select['status'] == 'Approved') echo 'selected="selected"';?>><?php echo get_phrase('Approve');?></option>
                                            <option value="Declined"<?php if($select['status'] == 'Declined') echo 'selected="selected"' ;?>><?php echo get_phrase('Decline');?></option>

                                            </select>
                                        </div>
                                    </div>
                                            
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-info btn-sm btn-block btn-rounded"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('save');?></button>
                                    </div>
                                <?php echo form_close();?>            
                                
                            </div>                
                        </div>
                    </div>
                </div>
<?php endforeach;?>
