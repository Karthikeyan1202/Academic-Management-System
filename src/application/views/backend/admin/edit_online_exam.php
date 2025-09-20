<?php
    $online_exam = $this->db->get_where('online_exam', array('online_exam_id' => $online_exam_id))->row_array();
    $sections    = $this->db->get_where('section', array('class_id' => $online_exam['class_id']))->result_array();
    $subjects    = $this->db->get_where('subject', array('class_id' => $online_exam['class_id']))->result_array();
?>
<div class="col-sm-12">

				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('edit_exams'); ?></div>
<div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
    <?php echo form_open(site_url('admin/manage_online_exam/edit') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
	<input type="hidden" name="online_exam_id" value="<?php echo $online_exam['online_exam_id']; ?>">	
	<div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('exam_title');?></label>
                    <div class="col-sm-12">

				 <input type="text" class="form-control" name="exam_title" value="<?php echo $online_exam['title']; ?>"/>
				   
                    </div>
                </div>
    
           <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('class');?></label>
                    <div class="col-sm-12">

				 <select name="class_id" id = "class_id" class="form-control selectboxit"
                        onchange="return get_class_sections(this.value)" required>
                        <option value=""><?php echo get_phrase('select_class');?></option>
                       <?php
                                    $classes = $this->db->get('class')->result_array();
                                    foreach($classes as $row):?>
                                        <option value="<?php echo $row['class_id'];?>" <?php if($row['class_id'] == $online_exam['class_id']) echo 'selected'; ?>>
                                    <?php echo $row['name'];?>
                                </option>
                        <?php
                        endforeach;
                        ?>
                    </select>
				   
                    </div>
                </div>
				
 <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('section');?></label>
                    <div class="col-sm-12" id="section_selector_holder">

				  <select name="section_id" class="form-control selectboxit" id="section_id">
                                <?php foreach ($sections as $section): ?>
                                    <option value="<?php echo $section['section_id']; ?>" <?php if($section['section_id'] == $online_exam['section_id']) echo 'selected'; ?>><?php echo $section['name']; ?></option>
                                <?php endforeach; ?>
                            </select>
				   
                    </div>
                </div>
				
				 <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('subject');?></label>
                    <div class="col-sm-12" id="subject_selector_holder">

				<select name="subject_id" class="form-control selectboxit" id="subject_id">
                                <?php foreach ($subjects as $subject): ?>
                                    <option value="<?php echo $subject['subject_id']; ?>" <?php if($subject['subject_id'] == $online_exam['subject_id']) echo 'selected'; ?>><?php echo $subject['name']; ?></option>
                                <?php endforeach; ?>
                            </select>
				   
                    </div>
                </div>

            <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('exam_date');?></label>
                    <div class="col-sm-12">
				<input class="form-control m-r-10" name="exam_date" type="date" value="<?php echo date('M d, Y', $online_exam['exam_date']); ?>" id="example-date-input" required>

            </div>
        </div>
		
		 <!-- .row -->
                            <div class="row">
							<label class="col-md-12" for="example-text"><?php echo get_phrase('exam_time');?></label>
                                <div class="col-lg-6">
                                    <div class="input-group clockpicker " data-placement="bottom" data-align="top" data-autoclose="true">
                                        <input type="text" name="time_start" class="form-control" value="<?php echo $online_exam['time_start'];?>">
                                        <span class="input-group-addon"> <span class="glyphicon glyphicon-time"></span> </span>
                                    </div>
                                </div>
								
                                <div class="col-lg-6">
                                    <div class="input-group clockpicker " data-placement="left" data-align="top" data-autoclose="true">
                                        <input type="text" name="time_end" class="form-control" value="<?php echo $online_exam['time_end'];?>">
                                        <span class="input-group-addon"> <span class="glyphicon glyphicon-time"></span> </span>
                                    </div>
                                </div>

					</div>
        
                <!-- /.row -->

         <hr>

           <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('exam_percentage');?></label>
                    <div class="col-sm-12">
                <input type="number" name="minimum_percentage" class="form-control" value="<?php echo $online_exam['minimum_percentage']; ?>" required>
            </div>
            <div class="col-sm-3" style="text-align: left; line-height: 30px;"> <span style="color:#FF0000">Write minimum percentage</span></div>
    </div>
	
	   <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('instructions');?></label>
                    <div class="col-sm-12">
                <textarea rows="5" name="instruction" class="form-control" placeholder="please specify exam instructions here" ><?php echo $online_exam['instruction']; ?></textarea>
            </div>

        </div>
    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-5">
            <button type="submit" class="btn btn-info btn-rounded btn-sm"><i class="fa fa-save"></i>&nbsp;<?php echo get_phrase('edit_exam'); ?></button>
        </div>
    </div>
</form>                
</div> 
</div>
</div> 
</div> 

<script type="text/javascript">
	function get_class_sections(class_id) {

    	$.ajax({
            url: '<?php echo site_url('admin/get_class_section_selector/');?>' + class_id ,
            success: function(response)
            {
                jQuery('#section_selector_holder').html(response);
            }
        });

        get_class_subject(class_id);
    }

    function get_class_subject(class_id) {

    	$.ajax({
            url: '<?php echo site_url('admin/get_class_subject_selector/');?>' + class_id ,
            success: function(response)
            {
                jQuery('#subject_selector_holder').html(response);
            }
        });
    }

</script>