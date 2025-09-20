<div class="row">
<div class="col-sm-12">
			<div class="panel panel-info">
                    <div class="panel-body table-responsive">
 						<table id="example23" class="display nowrap" cellspacing="0" width="100%">
                            <thead>
                                    <tr>
                                        <th><div><?php echo get_phrase('Book Name');?></div></th>
                                        <th><div><?php echo get_phrase('Request Date');?></div></th>
                                        <th><div><?php echo get_phrase('Return Date');?></div></th>
                                        <th><div><?php echo get_phrase('Status');?></div></th>
                                        <th><div><?php echo get_phrase('Actions');?></div></th>

                                    </tr>
                            </thead>
                    <tbody>

                    <?php $select_all_request_books = $this->db->get('book_request')->result_array();
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

                            <td>
                            <a onclick="showAjaxModal('<?php echo base_url();?>modal/popup/book_approval_status/<?php echo $all_request_books_selected['book_request_id'];?>')" class="btn btn-info btn-circle btn-xs"><i class="fa fa-edit"></i></a>
                            <a href="<?php echo base_url();?>admin/studentRequestBook/delete/<?php echo $all_request_books_selected['book_request_id'];?>" onclick="return confirm('Are you sure want to delete?');" class="btn btn-danger btn-circle btn-xs" style="color:white"><i class="fa fa-times"></i></a>
                            </td>
							
                        </tr>
                    <?php endforeach;?>
                    </tbody>
                </table>
			</div>
		</div>
	</div>
</div>