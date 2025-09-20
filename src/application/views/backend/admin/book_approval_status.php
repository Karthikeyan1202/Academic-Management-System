        <?php $select_book_request = $this->db->get_where('book_request', array('book_request_id' => $param2))->result_array();

        foreach ($select_book_request as $key => $book_request):
        ?>


<div class="row">
    <div class="col-sm-12">
	<div class="panel panel-info">
                <?php echo form_open(base_url() . 'admin/studentRequestBook/update/' . $param2 , array('class' => 'form-horizontal form-goups-bordered validate'));?>
		    <div class="panel-body table-responsive">	

                        <div class="form-group">
                 	    <label class="col-md-12" for="example-text"><?php echo get_phrase('Status');?></label>
                                <div class="col-sm-12">
                                <select class="form-control" name="status">
                                        <option value="1"<?php if($book_request['status'] == 1) echo 'selected="selected"';?>>Approve</option>
                                        <option value="2"<?php if($book_request['status'] == 2) echo 'selected="selected"';?>>Pending</option>
                                        <option value="3" <?php if($book_request['status'] == 3) echo 'selected="selected"';?>>Disapprove</option>
                                </select>
                            </div>
                        </div>
							
                           <div class="form-group">
                              <button type="submit" class="btn btn-block btn-info btn-rounded btn-sm "><i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('update');?></button>
			   </div>
                     </div>  
                <?php echo form_close();?>
                    
        </div>
     </div>
</div>


<?php endforeach; ?>