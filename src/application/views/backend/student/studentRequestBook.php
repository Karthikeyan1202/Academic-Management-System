<div class="row">
    <div class="col-sm-5">
		<div class="panel panel-info">

                <?php echo form_open(base_url() . 'student/studentRequestBook/create', array('class' => 'form-horizontal form-goups-bordered validate'));?>
					<div class="panel-body table-responsive">

                    <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('Select Book');?></label>
                                <div class="col-sm-12">
                                    <select class="form-control" name="book_id">
                                    <option><?php echo get_phrase('Select Book');?></option>
                                    <?php $select_all_available_books = $this->db->get_where('book', array('status' => '1'))->result_array();
                                        foreach($select_all_available_books as $key => $all_available_books_selected): ?>
                                            <option value="<?php echo $all_available_books_selected['book_id'];?>"><?php echo $all_available_books_selected['name'];?><option>
                                        <?php endforeach;?>
                                    </select>
                                </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('Return Date');?></label>
                                <div class="col-sm-12">
                                    <input class="form-control m-r-10" name="return_date" type="date" value="" id="example-date-input" required>
                                    <input type="hidden" name="request_date" value="<?php echo date('m/d/Y');?>">
                               </div>
                        </div>
                            
                        <div class="form-group">
                                <button type="submit" class="btn btn-block btn-info btn-rounded btn-sm "><i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('Request');?></button>
						</div>
                <?php echo form_close();?>
                </div>                
			</div>
		</div>
			<!----CREATION FORM ENDS-->
	
        <div class="col-sm-7">
			<div class="panel panel-info">
                    <div class="panel-body table-responsive">
 						<table id="example23" class="display nowrap" cellspacing="0" width="100%">
                            <thead>
                                    <tr>
                                        <th><div><?php echo get_phrase('Book Name');?></div></th>
                                        <th><div><?php echo get_phrase('Request Date');?></div></th>
                                        <th><div><?php echo get_phrase('Return Date');?></div></th>
                                        <th><div><?php echo get_phrase('Status');?></div></th>
                                    </tr>
                            </thead>
                    <tbody>

                    <?php $select_all_request_books = $this->db->get_where('book_request', array('student_id' => $this->session->userdata('student_id')))->result_array();
                                        foreach($select_all_request_books as $key => $all_request_books_selected): ?>
                        <tr>
                            <td><?php echo $this->db->get_where('book', array('book_id' => $all_request_books_selected['book_id']))->row()->name;?></td>
							<td><?php echo date('d M, Y', $all_request_books_selected['request_date']);?></td>
                            <td><?php echo date('d M, Y', $all_request_books_selected['return_date']);?></td>
							<td><span class="label label-<?php if($all_request_books_selected['status'] == '1') echo 'success'; elseif($all_request_books_selected['status'] == '2') echo 'warning'; else echo 'danger';?>">
                            <?php if($all_request_books_selected['status'] == 1):?>
                            <?php echo 'approved';?>
                            <?php endif;?>
                            <?php if($all_request_books_selected['status'] == 2):?>
                            <?php echo 'pending';?>
                            <?php endif;?>
                            <?php if($all_request_books_selected['status'] == 3):?>
                            <?php echo 'disapproved';?>
                            <?php endif;?>
                            </span></td>
							
                        </tr>
                    <?php endforeach;?>
                    </tbody>
                </table>
			</div>
		</div>
	</div>
</div>
            <!----TABLE LISTING ENDS--->
			