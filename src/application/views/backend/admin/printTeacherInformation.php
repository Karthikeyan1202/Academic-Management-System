				<div class="row">
                    <div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <?php echo translate("teacher's_profile");?>
							
					<a href="<?php echo base_url();?>admin/teacher" 
                     class="btn btn-orange btn-xs"><i class="fa fa-mail-reply-all"></i>&nbsp;<?php echo translate('back');?>
                    </a>
					
					<a href="<?php echo base_url();?>admin/teacher" 
                     class="btn btn-orange btn-xs"><i class="fa fa-plus"></i>&nbsp;<?php echo translate('add_teacher');?>
                    </a>
					
	<button type="button" name="b_print" class="btn btn-xs btn-info" onClick="printdiv('div_print');"><i class="fa fa-print"></i><?php echo translate('print');?></button>	
							</div>
                            <div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive" id="div_print">
                
				
				
<?php foreach($teachers as $row):?>			
				
<table class="table" width="1030" border="1">
 
 <div class="alert alert-default" align="center"><img src="<?php echo base_url() ?>uploads/logo.png"  class="img-circle" width="80" height="80"/>
					<h3><?php echo $system_name;?></h3>
					<?php $address = $this->db->get_where('settings', array('type' => 'address'))->row()->description;?>
					<?php echo $address; ?>
					<h5><?php $phone = $this->db->get_where('settings', array('type' => 'phone'))->row()->description;?></h5>
					<?php echo $phone; ?>&nbsp;&nbsp;Email:&nbsp;&nbsp;<?php $system_email = $this->db->get_where('settings', array('type' => 'system_email'))->row()->description;?>
					<?php echo $system_email; ?>

					</div>
					<hr>
 
  <tr>
    <td width="180" rowspan="4"><img src="<?php echo $this->crud_model->get_image_url('teacher',$row['teacher_id']);?>" alt="user" class="img-thumbnail img-responsive" width="260" height="260"></td>
    <td width="135"><div align="right">NAME</div></td>
    <td width="671" class="text-uppercase">&nbsp;&nbsp;<?php echo $row ['name']; ?></td>
  </tr>
  <tr>
    <td><div align="right">TEACHER NUMBER</div></td>
    <td>&nbsp;&nbsp;<?php echo $row ['teacher_number']; ?></td>
  </tr>
  <tr>
    <td><div align="right">EMAIL</div></td>
    <td>&nbsp;&nbsp;<?php echo $row ['email']; ?></td>
  </tr>
  <tr>
    <td><div align="right">GENDER</div></td>
    <td>&nbsp;&nbsp;<?php echo $row ['sex']; ?></td>
  </tr>
  
  <tr>
    <td colspan="3"><div class="alert alert-info">FULL PERSONAL DETAILS</div> </td>
  </tr>
   <tr>
    <td><div align="right">TEACHER ROLE</div></td>
     <td colspan="2">
							
							<?php if($row['role'] == '1')echo 'Class Teacher';?>
                            <?php if($row['role'] == '2')echo 'Subject Teacher';?>
							
							</td>
  </tr>
  <tr>
    <td><div align="right">DATE OF BIRTH </div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['birthday']; ?></td>
  </tr>
  <tr>
    <td><div align="right">RELIGION</div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['religion']; ?></td>
  </tr>
  <tr>
    <td><div align="right">PHONE NUMBER</div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['phone']; ?></td>
  </tr>
  <tr>
    <td><div align="right">QUALIFICATION</div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['qualification']; ?></td>
  </tr>
  <tr>
    <td><div align="right">BLOOD GROUP </div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['blood_group']; ?></td>
  </tr>
  <tr>
    <td><div align="right">MARITAL STATUS </div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['marital_status']; ?></td>
  </tr>
  <tr>
    <td><div align="right">EMAIL</div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['email']; ?></td>
  </tr> 
  <tr>
    <td colspan="3"><div class="alert alert-info">SOCIAL INFORMATION</div> </td>
  </tr>
  <tr>
    <td><div align="right">FACEBOOK</div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['facebook']; ?></td>
  </tr>
  <tr>
    <td><div align="right">TWITTER</div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['twitter']; ?></td>
  </tr>
  <tr>
    <td><div align="right">GOOGLE PLUS </div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['googleplus']; ?></td>
  </tr>
  <tr>
    <td><div align="right">LINKEDIN</div></td>
    <td colspan="2">&nbsp;&nbsp;<?php echo $row ['linkedin']; ?></td>
  </tr>
  <tr>
    <td colspan="3"><div class="alert alert-info">DOWNLOAD FULL DOCUMENTS ABOUT TEACHER </div>&nbsp;&nbsp;Download Full Document:&nbsp;<a href="<?php echo base_url().'uploads/teacher_image/'.$row['file_name']; ?>"><button type="button" class="btn btn-success btn-circle btn-xs"><i class="fa fa-download"></i></button></a>
	<hr>
	</td>
  </tr>
</table>
<?php endforeach; ?>

                        </div>
						</div>
						</div>
						</div>
						</div>
<script language="javascript">
function printdiv(printpage)
{
var headstr = "<html><head><title></title></head><body>";
var footstr = "</body>";
var newstr = document.all.item(printpage).innerHTML;
var oldstr = document.body.innerHTML;
document.body.innerHTML = headstr+newstr+footstr;
window.print();
document.body.innerHTML = oldstr;
return false;
}
</script>
                    
<script type="text/javascript" src="js/html2canvas.min.js"></script>
<script type="text/javascript" src="js/jspdf.min.js"></script>
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