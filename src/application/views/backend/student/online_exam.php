<div class="row">		
			  <div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('exam_list');?></div>
                                <div class="panel-body table-responsive">
								
		<a href="<?php echo site_url('student/online_exam'); ?>" class="btn btn-<?php echo $data == 'active' ? 'primary' : 'white'; ?>" style="color:#000">
			<?php echo get_phrase('active_exams');?>
		</a>
		<a href="<?php echo site_url('student/online_exam_result'); ?>" class="btn btn-default btn-<?php echo $data == 'result' ? 'primary' : 'white'; ?>" style="color:#000">
			<?php echo get_phrase('view_results');?>
		</a>
<hr>

		<table class="table">
			<thead>
                <tr>
                    <th><div><?php echo get_phrase('exam_name');?></div></th>
                    <th><div><?php echo get_phrase('subject');?></div></th>
                    <th><div><?php echo get_phrase('exam_date');?></div></th>
                    <th width="40%"><div><?php echo get_phrase('options');?></div></th>
                </tr>
            </thead>
            <tbody>
            	<?php
                    foreach ($exams as $row):
                    	$current_time = time();
                    	$exam_start_time = strtotime(date('Y-m-d', $row['exam_date']).' '.$row['time_start']);
                    	$exam_end_time = strtotime(date('Y-m-d', $row['exam_date']).' '.$row['time_end']);
                    	if ($current_time > $exam_end_time)
                    		continue;
            	?>
                    <tr>
                    	<td><?php echo $row['title'];?></td>
                    	<td>
                    		<?php echo $this->db->get_where('subject', array('subject_id' => $row['subject_id']))->row()->name;?>
                    	</td>
                    	<td>
                    		<?php
                            echo '<b>'.get_phrase('date').':</b> '.date('M d, Y', $row['exam_date']).'<br>'.'<b>'.get_phrase('time').':</b> '.$row['time_start'].' - '.$row['time_end'];
                        ?>
                    	</td>
                    	<td>
							<?php if ($this->crud_model->check_availability_for_student($row['online_exam_id']) != "submitted"): ?>
								<?php if ($current_time >= $exam_start_time && $current_time <= $exam_end_time): ?>
									<a href="<?php echo site_url('student/take_online_exam/'.$row['code']);?>" class="btn btn-primary btn-rounded btn-sm" style="color:white">
										<i class="fa fa-check"></i>&nbsp; <?php echo get_phrase('take_exam');?>
									</a>
								<?php else: ?>
									<div class="alert alert-info">
									<a href="<?php echo site_url('student/take_online_exam/'.$row['code']);?>" class="btn btn-primary btn-rounded btn-sm" style="color:white">
										<i class="fa fa-check"></i>&nbsp; <?php echo get_phrase('take_exam');?>
									</a>
										<?php echo get_phrase('you_can_only_take_the_exam_during_the_scheduled_time');?>
									</div>
								<?php endif; ?>

							<?php else: ?>
								<div class="alert alert-success">
									<?php echo get_phrase('already_submitted');?>
								</div>
							<?php endif; ?>
                    	</td>
                    </tr>
            <?php endforeach; ?>
            </tbody>
		</table> 
	</div>
</div>
</div>
</div>
