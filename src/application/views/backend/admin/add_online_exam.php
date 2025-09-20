<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="col-sm-12">

				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('exam_settings'); ?></div>
<div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
    <?php echo form_open(site_url('admin/manage_online_exam/create') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
	
	<div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('exam_title');?></label>
                    <div class="col-sm-12">

				 <input type="text" class="form-control" name="exam_title"/>
				   
                    </div>
                </div>
    
           <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('class');?></label>
                    <div class="col-sm-12">

				 <select name="class_id" id = "class_id" class="form-control selectboxit"
                        onchange="return get_class_section_subject(this.value)" required>
                        <option value=""><?php echo get_phrase('select_class');?></option>
                        <?php 
                        $classes = $this->db->get('class')->result_array();
                        foreach($classes as $row):
                        ?>
                            <option value="<?php echo $row['class_id'];?>"><?php echo $row['name'];?></option>
                        <?php
                        endforeach;
                        ?>
                    </select>
				   
                    </div>
                </div>
				
				 <div id="section_subject_selection_holder"></div>


            <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('exam_date');?></label>
                    <div class="col-sm-12">
				<input class="form-control m-r-10" name="exam_date" type="date" value="<?php echo date('Y-m-d') ?>" id="example-date-input" required>

            </div>
        </div>
		
		 <!-- .row -->
                            <div class="row">
							<label class="col-md-12" for="example-text"><?php echo get_phrase('exam_time');?></label>
                                <div class="col-lg-6">
                                    <div class="input-group clockpicker " data-placement="bottom" data-align="top" data-autoclose="true">
                                        <input type="text" name="time_start" class="form-control" value="13:14">
                                        <span class="input-group-addon"> <span class="glyphicon glyphicon-time"></span> </span>
                                    </div>
                                </div>
								
                                <div class="col-lg-6">
                                    <div class="input-group clockpicker " data-placement="left" data-align="top" data-autoclose="true">
                                        <input type="text" name="time_end" class="form-control" value="13:14">
                                        <span class="input-group-addon"> <span class="glyphicon glyphicon-time"></span> </span>
                                    </div>
                                </div>

					</div>
        
                <!-- /.row -->

         <hr>

           <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('exam_percentage');?></label>
                    <div class="col-sm-12">
                <input type="number" name="minimum_percentage" class="form-control" placeholder="Write minimum percentage score here"  required>
            </div>
            <div class="col-sm-3" style="text-align: left; line-height: 30px;"> <span style="color:#FF0000">Write minimum percentage</span></div>
    </div>
	
	   <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('instructions');?></label>
                    <div class="col-sm-12">
                <textarea rows="5" name="instruction" class="form-control" placeholder="please specify exam instructions here" ></textarea>
            </div>

        </div>
    <div class="form-group">
            <button type="submit" class="btn btn-info btn-rounded btn-block btn-sm"><i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('add_exam'); ?></button>
    </div>
</form>                
</div> 
</div>
</div> 
</div> 

<script type="text/javascript">
var class_id = '';
var starting_hour = '';
var starting_minute = '';
var ending_hour = '';
var ending_minute = '';
jQuery(document).ready(function($) {
    $('#add_class_routine').attr('disabled','disabled')
});
    function get_class_section_subject(class_id) {
        $.ajax({
            url: '<?php echo base_url();?>admin/get_class_section_subject/' + class_id ,
            success: function(response)
            {
                jQuery('#section_subject_selection_holder').html(response);
            }
        });
    }
function check_validation(){
    console.log('class_id: '+class_id+' starting_hour:'+starting_hour+' starting_minute: '+starting_minute+' ending_hour: '+ending_hour+' ending_minute: '+ending_minute);
    if(class_id !== '' && starting_hour !== '' && starting_minute  !== '' && ending_hour  !== '' && ending_minute !== ''){
        $('#add_class_routine').removeAttr('disabled');
    }    
}
$('#class_id').change(function() {
    class_id = $('#class_id').val();
    check_validation();
});
$('#starting_hour').change(function() {
    starting_hour = $('#starting_hour').val();
    check_validation();
});
$('#starting_minute').change(function() {
    starting_minute = $('#starting_minute').val();
    check_validation();
});
$('#ending_hour').change(function() {
    ending_hour = $('#ending_hour').val();
    check_validation();
});
$('#ending_minute').change(function() {
    ending_minute = $('#ending_minute').val();
    check_validation();
});


</script>