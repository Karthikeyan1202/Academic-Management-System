
  <div class="row">
  <div class="col-sm-12">
  <div class="panel panel-info"> 
  <div class="panel-body"> 
  <?php
    $class_name    =   $this->db->get_where('class' , array('class_id' => $class_id))->row()->name;
    $section_name  =   $this->db->get_where('section' , array('section_id' => $section_id))->row()->name;
    $system_name   =   $this->db->get_where('settings' , array('type'=>'system_name'))->row()->description;
    $running_year  =   $this->db->get_where('settings' , array('type'=>'session'))->row()->description;
	$exam_name     =   $this->db->get_where('exam' , array('exam_id' => $exam_id))->row()->name;
	//$nextterm  	   =   $this->db->get_where('general_settings' , array('type'=>'nextterm'))->row()->value;
?>

<?php

	$parent_id = $this->session->userdata('parent_id');
    $students  = $this->db->get_where('student' , array('parent_id' => $parent_id, 'student_id' => $student_id))->result_array(); 
    foreach($students as $row): 
        $student_id = $row['student_id'];
        $roll = $row['roll'];
        $sex = $row['sex'];
        $total_marks = 0;
        $total_class_score = 0;

        $total_grade_point = 0;
        ?>
<div class="print" style="border:1px solid #000; padding-left:5px; padding-right:5px; padding-bottom:5px; padding-top:5px;"> 
<div class="printableArea">

<table width="1000" border="0">
  <tr>
    <td>
            <div class="col-md-2">
                <img src="<?php echo base_url();?>uploads/logo.png" class="thumbnail pull-left" height="120">			</div>
			
            <div class="col-md-8" style="text-align: center;">
                <div class="tile-stats tile-white tile-white-primary">
                    <span style="text-align: center;font-size: 29px;"><?php echo $this->db->get_where('settings' , array('type' =>'system_name'))->row()->description;?></span>
                    <br/>
                    <span style="text-align: center;font-size: 18px;"><?php echo $this->db->get_where('settings' , array('type' =>'address'))->row()->description;?></span>
                    <br/>
                    <span style="text-align: center;font-size: 22px;">REPORT SHEET (CONVENTIONAL)</span>                </div>
            </div>
			<div class="col-md-2 logo" >
                <img src="<?php echo $this->crud_model->get_image_url('student',$row['student_id']);?>" class="thumbnail pull-right" height="120">				</div>
        </div></td>
  </tr>
</table>

<table width="1000" border="0">
  <tr>
    <td style="background:black">&nbsp;</td>
  </tr>
</table>

 <table width="1000" border="1">

  <tr>
    <td>TERM FOR:</td>
    <td><?php $section_name = $this->db->get_where('section' , array('class_id' => $class_id))->row()->name; echo $section_name;?></td>
    <td>ACADEMIC YEAR:</td>
    <td><?php echo $this->db->get_where('settings' , array('type' =>'session'))->row()->description;?></td>
    <td>SEX:</td>
    <td><?php echo $sex;?></td>
    <td>ATTENDANCE:</td>
    <td><?php echo $this->db->get_where('attendance', array('session' => $running_year, 'student_id' => $student_id))->num_rows(); ?></td>
  </tr>
  
   <tr>
    <td>NAME OF PUPIL:</td>
    <td><?php echo $row['name'];?></td>
    <td>ADMISSION NO:</td>
    <td><?php echo $roll;?></td>
    <td>CLASS:</td>
    <td><?php $class_name = $this->db->get_where('class' , array('class_id' => $class_id))->row()->name;echo $class_name;?></td>
    <td>DAYS OUT OF:</td>
   <td><?php echo $this->db->get_where('attendance', array('session' => $running_year))->num_rows(); ?></td>
  </tr>
</table>

<br />
 <table width="1000" style="border:1px solid #CCCCCC">
  <tr style="background:#CCCCCC">
   <td ><strong>STUDENT SUBJECTS:</strong></td>
    <td ><strong>1ST SCORE</strong></td>
    <td ><strong>2ND SCORE</strong></td>
    <td ><strong>3RD SCORE</strong></td>
    <td ><strong>EXAM SCORE</strong></td>
    <td ><strong>TOTAL SCORE</strong></td>
    <td ><strong>AVERAGE SCORE</strong></td>
    <td ><strong>GRADE SCORE</strong></td>
    <td ><strong>SUBJECT REMARKS</strong></td>
  </tr>
  
   						<?php
                        $subjects = $this->db->get_where('subject' , array('class_id' => $class_id))->result_array();
                        foreach($subjects as $row):
                    	?>
  <tr>
    					<td ><?php echo $row['name'];?></td>
	   					<?php
                        $obtained_mark_query =  $this->db->get_where('mark' , array(
                                                            'class_id' => $class_id , 
                                                                'exam_id' => $exam_id , 
                                                                    'subject_id' => $row['subject_id'] ,
																	'subject_id' => $row['subject_id'] ,
                                                                        'student_id' => $student_id
                                                        ));
                            if ( $obtained_mark_query->num_rows() > 0) {
                                $obtained_marks = $obtained_mark_query->row()->exam_score;
                                $obtained_class_score = $obtained_mark_query->row()->class_score1;
                                $obtained_class_score2 = $obtained_mark_query->row()->class_score2;
                                $obtained_class_score3 = $obtained_mark_query->row()->class_score3;
								$comment = $obtained_mark_query->row()->comment;
                                $total_marks += $obtained_marks;
                                $total_class_score += $obtained_class_score;
                                $total_class_score2 += $obtained_class_score2;
                                $total_class_score3 += $obtained_class_score3;
                               
                               
                            }
                        ?>
    <td ><?php echo $obtained_class_score;?></td>
    <td ><?php echo $obtained_class_score2;?></td>
    <td ><?php echo $obtained_class_score3;?></td>
    <td ><?php echo $obtained_marks;?></td>
    <td ><?php echo ($obtained_marks + $obtained_class_score + $obtained_class_score2 + $obtained_class_score3 + $obtained_class_score4);?></td>
    <td ><?php 
							$a = $obtained_marks;
							$b = $obtained_class_score;
							$c = $obtained_class_score2;
							$d = $obtained_class_score3;
							
							$sum = $a + $b + $c + $d;
							$average = $sum/4;
							
							echo $average; 
							?></td>
    <td ><?php if ($sum >= "70"):?>
								<p style="color:green"><?php echo 'A';?></p>
								<?php endif;?>
								
								<?php if ($sum < "70" && $sum == '60'):?>
								<p style="color:green"><?php echo 'B';?></p>
								<?php endif;?>
								
								<?php if ($sum < "60" && $sum == '50'):?>
								<p style="color:green"><?php echo 'C';?></p>
								<?php endif;?>
								
								<?php if ($sum < "50" && $sum == '45'):?>
								<p style="color:green"><?php echo 'D';?></p>
								<?php endif;?>
								
								<?php if ($sum < "45" && $sum == '40'):?>
								<p style="color:green"><?php echo 'E';?></p>
								<?php endif;?>
								
								<?php if ($sum < "40"):?>
								<p style="color:red"><?php echo 'F';?></p>
								<?php endif;?></td>
	

    <td ><?php echo $comment; ?></td>
  </tr>
   <?php endforeach;?>
</table>

<table width="1000" style="border:1px solid #CCCCCC">
                                    <tr>
                                        <td style="background:#CCCCCC">&nbsp;</td>
                                    </tr>
                                </table>
						    <br>
						
						
                                <table width="1000" style="border:1px solid #CCCCCC">
                                    <tr>
                                        <td width="150">NUMBER IN CLASS:</td>
                                        <?php $number_in_class =  $this->db->get_where('student', array('class_id' =>$class_id))->num_rows();?>
                                        <td align="center"><div  style="border-bottom: 1px dotted #D2CBCB"><?php echo $number_in_class;?></div></td>
                                        <td>CLASS POSITION:</td>
                                        <td align="center"><div  style="border-bottom: 1px dotted #D2CBCB">&nbsp;</div></td>
                                    </tr>
                                </table>
                    
                                <table width="1000" style="border:1px solid #CCCCCC">
                                    <tr>
                                        <td>CLASS TEACHER'S COMMENT:</td>
                                        <td><div  style="border-bottom: 1px dotted #D2CBCB">&nbsp;</div></td>
                                    </tr>
                                </table>
                            
                            
                    
                                <table width="1000" style="border:1px solid #CCCCCC">
                                    <tr>
                                        <td>HEAD TEACHER'S COMMENT:</td>
                                        <td><div style="border:1 px solid">&nbsp;</div></td>
                        
                                    </tr>
                                </table>
						
						
						
							<table width="1000" style="border:1px solid #CCCCCC">
								<tr>
									<td>RESUMPTION DATE:</td>
									<td><div> ________________________ </div></td>
									<td>OUTSTANDING FEE:</td>
                                    <?php $select_student_due_payment = $this->db->select_sum('due');
                                                                        $this->db->from('invoice');
                                                                        $this->db->where(array('student_id' => $student_id));
                                                                        $query = $this->db->get();
                                                                        $display_student_due = $query->row()->due;?>
									<td><div  style="border-bottom: 1px dotted #D2CBCB"><strong style="color:red"><?php echo $system_currency .' '. $display_student_due;?></strong></div></td>
								</tr>
								<tr>
									<td>SIGNATURE:</td>
									<td><div> ________________________ </div></td>
									<td>DATE:</td>
									<td><div> ________________________ </div></td>
					   
								</tr>
							</table>
</div>
</div>
 <hr>
 <?php endforeach;?>
<button id="print" class="btn btn-info btn-rounded btn-block btn-sm pull-right" type="button"> <span><i class="fa fa-print"></i>&nbsp;Print</span> </button>


<script type="text/javascript" src="<?php echo base_url();?>js/html2canvas.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>js/jspdf.min.js"></script>
<script type="text/javascript">
    var pages = $('.print');
    var doc = new jsPDF();
    var j = 0;
    for (var i = 0 ; i < pages.length; i++) {
        html2canvas(pages[i]).then(function(canvas) {
        var img=canvas.toDataURL("image/png");
        // debugger;
        var height =  canvas.height / 440 * 80;
        doc.addImage(img,'JPEG',10,0,190,height);
        if (j < (pages.length - 1) ) doc.addPage();
        if (j == (pages.length - 1) ) {doc.save('Report.pdf');}
        j++;
        });
    }
    
</script>

</div>
</div>
</div>
</div>