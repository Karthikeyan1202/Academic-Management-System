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
       <div class="row">
                    <div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('student_marks');?></div>
                            <div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
		<?php echo form_open(base_url() . 'parents/search_student');?>

					                       
                       <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('select_your_child');?></label>
                    <div class="col-sm-12">
                            <select name="student_id" class="form-control select2" required>
                              <option value=""><?php echo get_phrase('select_your_child');?></option>
                              		 <?php
                    						$children_of_parent = $this->db->get_where('student', 
											array('parent_id' => $this->session->userdata('parent_id')))->result_array();
                    						foreach ($children_of_parent as $row):
                        			  ?>
									  
                                <option value="<?php echo $row['student_id'];?>"><?php echo $row['name'];?></option>
                                   
								   <?php endforeach; ?>
                          </select>
                        </div>
                    </div> 

				<input type="hidden" name="operation" value="selection">

<button type="submit" class="btn btn-info btn-sm btn-rounded btn-block"><i class="fa fa-search"></i>&nbsp;<?php echo get_phrase('get_results');?></button>
<hr>
<?php echo form_close();?>


<?php
$student_name = $this->db->get_where('student', array('student_id' => $student_id))->result_array();
foreach ($student_name as $row):
    ?>
	

<div class="col-md-12">
        <div class="panel panel-success">
				<div class="panel-heading" align="center">
				<img src="<?php echo $this->crud_model->get_image_url('student', $row['student_id']); ?>" class="img-circle" width="100" height="100"/>
				<h2><strong style="color:#FFFFFF"><?php echo $row ['name'];?></strong></h2>
				</div>

            </div>
			</div>


<?php endforeach; ?>

<?php if ($student_id != ''):?>

<?php 
	$parent_id = $this->session->userdata('parent_id');
    $student_info  = $this->db->get_where('student' , array('parent_id' => $parent_id, 'student_id' => $student_id))->result_array();
    $exams         = $this->crud_model->get_exams();
    foreach ($student_info as $row1):
    foreach ($exams as $row2):
?>
  <br><br><br>  <br><br><br>  <br><br><br>  <br><br><br>
			
             <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo $row2['name'];?></div>
                          
           
                   <table class="table table-bordered">
                       <thead>
                        <tr>
                            <td style="text-align: center;">SUBJECT</td>
                            <td style="text-align: center;">1ST SCORE</td>
                            <td style="text-align: center;">2ND SCORE</td>
							<td style="text-align: center;">3RD SCORE</td>
                            <td style="text-align: center;">EXAM SCORE</td>
                            <td style="text-align: center;">TOTAL SCORE</td>
                            <td style="text-align: center;">AVERAGE</td>
                            <td style="text-align: center;">COMMENT</td>
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
                  
                    <a href="<?php echo base_url();?>parents/printResultSheet/<?php echo $student_id;?>/<?php echo $row2['exam_id'];?>" 
                        class="btn btn-info btn-rounded btn-sm pull-right" style="color:white">
                        <i class="entypo-print"></i>&nbsp;<?php echo get_phrase('print_report_card');?>
                    </a>

                   <div id="chartdiv<?php echo $row2['exam_id'];?>" class="exam_chart"></div>
                       <script type="text/javascript">
                            var chart<?php echo $row2['exam_id'];?> = AmCharts.makeChart("chartdiv<?php echo $row2['exam_id'];?>", {
                                "theme": "light",
                                "type": "serial",
                                "dataProvider": [
                                        <?php 
                                            foreach ($subjects as $subject) :
                                        ?>
                                        {
                                            "subject": "<?php echo $subject['name'];?>",
                                            "mark_obtained": 
                                            <?php
                                            $obtained_mark = $this->crud_model->get_obtained_marks( $row2['exam_id'] , $class_id , $subject['subject_id'] , $row1['student_id']);
                                                echo $obtained_exam_score;
                                            ?>,
                                            "mark_highest": 
                                            <?php
                                                $highest_mark = $this->crud_model->get_highest_marks( $row2['exam_id'] , $class_id , $subject['subject_id'] );
                                                echo $highest_mark;
                                            ?>
                                        },
                                        <?php 
                                            endforeach;

                                        ?>
                                    
                                ],
                                "valueAxes": [{
                                    "stackType": "3d",
                                    "unit": "%",
                                    "position": "left",
                                    "title": "Mark Score Vs Highest Mark"
                                }],
                                "startDuration": 1,
                                "graphs": [{
                                    "balloonText": "Mark Score In [[category]]: <b>[[value]]</b>",
                                    "fillAlphas": 0.9,
                                    "lineAlpha": 0.2,
                                    "title": "2004",
                                    "type": "column",
                                    "fillColors":"#0e4d39",
                                    "valueField": "mark_obtained"
                                }, {
                                    "balloonText": "Highest Mark In [[category]]: <b>[[value]]</b>",
                                    "fillAlphas": 0.9,
                                    "lineAlpha": 0.2,
                                    "title": "2005",
                                    "type": "column",
                                    "fillColors":"#72c02c",
                                    "valueField": "mark_highest"
                                }],
                                "plotAreaFillAlphas": 0.1,
                                "depth3D": 20,
                                "angle": 45,
                                "categoryField": "subject",
                                "categoryAxis": {
                                    "gridPosition": "start"
                                },
                                "exportConfig":{
                                    "menuTop":"20px",
                                    "menuRight":"20px",
                                    "menuItems": [{
                                        "format": 'png'   
                                    }]  
                                }
                            });
                    </script>
               </div>
 
<?php
    endforeach;
        endforeach;
?>
<?php endif;?>



<?php if ($student_id == ''):?>
				<div class="alert alert-danger" align="center">Select classn and click on browse button to get student result(s)!</div>
<?php endif;?>
</div>
</div>
</div>
</div>
</div>
