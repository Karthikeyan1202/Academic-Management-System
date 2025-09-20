<style>
    .exam_chart {
    width           : 100%;
        height      : 265px;
        font-size   : 11px;
}
.amcharts-chart-div a{
    display:none !important;
}
  
</style>
<?php 
    $student_info  = $this->db->get_where('student' , array('student_id' => $this->session->userdata('login_user_id')))->result_array();
    $exams         = $this->crud_model->get_exams();
    foreach ($student_info as $row1):
    foreach ($exams as $row2):
?>
  
			<div class="row">
                    <div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo $row2['name'];?></div>
                            <div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
           
                   <table class="table table-bordered">
                       <thead>
                        <tr>
                           <td style="text-align: center; font-weight: bold;">SUBJECT</td>
<td style="text-align: center; font-weight: bold;">1ST SCORE</td>
<td style="text-align: center; font-weight: bold;">2ND SCORE</td>
<td style="text-align: center; font-weight: bold;">3RD SCORE</td>
<td style="text-align: center; font-weight: bold;">EXAM SCORE</td>
<td style="text-align: center; font-weight: bold;">TOTAL SCORE</td>
<td style="text-align: center; font-weight: bold;">AVERAGE</td>
<td style="text-align: center; font-weight: bold;">COMMENT</td>

                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $total_marks = 0;
                            $total_grade_point = 0;
                            $subjects = $this->db->get_where('subject' , array('class_id' => $class_id))->result_array();
                            foreach ($subjects as $row3):
                        ?>
                            <tr>
                                <td style="text-align: center;"><?php echo $row3['name'];?></td>
								<td style="text-align: center;">
								
								<?php
                                        $obtained_mark_query = $this->db->get_where('mark' , array(
                                                    'subject_id' => $row3['subject_id'],
                                                        'exam_id' => $row2['exam_id'],
                                                            'class_id' => $class_id,
                                                                'student_id' => $student_id));
                                        if ( $obtained_mark_query->num_rows() > 0) {
                                            $marks = $obtained_mark_query->result_array();
                                            foreach ($marks as $row4) {
											
                                                $obtained_class_score = $row4['class_score1'];												
                                            echo $obtained_class_score;
                                            }
                                        }
                                    ?>
								
								</td>
								<td style="text-align: center;">
								
								
								<?php
                                        $obtained_mark_query = $this->db->get_where('mark' , array(
                                                    'subject_id' => $row3['subject_id'],
                                                        'exam_id' => $row2['exam_id'],
                                                            'class_id' => $class_id,
                                                                'student_id' => $student_id));
                                        if ( $obtained_mark_query->num_rows() > 0) {
                                            $marks = $obtained_mark_query->result_array();
                                            foreach ($marks as $row4) {
                                                
												$obtained_class_score2 = $row4['class_score2'];												
                                            echo $obtained_class_score2;
                                                
                                            }
                                        }
                                    ?>
								
								
								</td>
								<td style="text-align: center;">
								
								<?php
                                        $obtained_mark_query = $this->db->get_where('mark' , array(
                                                    'subject_id' => $row3['subject_id'],
                                                        'exam_id' => $row2['exam_id'],
                                                            'class_id' => $class_id,
                                                                'student_id' => $student_id));
                                        if ( $obtained_mark_query->num_rows() > 0) {
                                            $marks = $obtained_mark_query->result_array();
                                            foreach ($marks as $row4) {
											
                                            $obtained_class_score3 = $row4['class_score3'];												
                                            echo $obtained_class_score3;
                                                
                                            }
                                        }
                                    ?>
								
								</td>
								<td style="text-align: center;">
								
								<?php
                                        $exam_score_query = $this->db->get_where('mark' , array(
                                                    'subject_id' => $row3['subject_id'],
                                                        'exam_id' => $row2['exam_id'],
                                                            'class_id' => $class_id,
                                                                'student_id' => $student_id));
                                        if ( $exam_score_query->num_rows() > 0) {
                                            $marks = $exam_score_query->result_array();
                                            foreach ($marks as $row4) {
											
											$obtained_exam_score = $row4['exam_score'];												
                                            echo $obtained_exam_score;
                                                
                                            }
                                        }
                                    ?>
								
								
								</td>
                               
                                <td style="text-align: center;">
                          <?php echo ($obtained_class_score + $obtained_class_score2 + $obtained_class_score3 + $obtained_exam_score);?>
                                </td>
                                <td style="text-align: center;">
                                    
									<?php 
							$a = $obtained_class_score;
							$b = $obtained_class_score2;
							$c = $obtained_class_score3;
							$d = $obtained_exam_score;
							
							$sum = $a + $b + $c + $d;
							$average = $sum/4;
							
							echo $average; 
							?>
                                </td>
                                <td style="text-align: center;"><?php echo $row4['comment'];?></td>
                            </tr>
                        <?php endforeach;?>
                    </tbody>
                   </table>
                  
                    <a href="<?php echo base_url();?>student/printResultSheet/<?php echo $this->session->userdata('login_user_id');?>/<?php echo $row2['exam_id'];?>" 
                        class="btn btn-info btn-rounded btn-sm pull-right" style="color:white">
                        <i class="entypo-print"></i>&nbsp;<?php echo get_phrase('print_report_card');?>
                    </a>
                    

                   
 
<?php
    endforeach;
        endforeach;
?>
</div>
</div>
</div>
</div>
</div>