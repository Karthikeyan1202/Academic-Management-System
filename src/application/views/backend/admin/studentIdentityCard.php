<style>

    	.id-card-holder {
			width: 225px;
		    padding: 4px;
		    margin: 0 auto;
		    background-color: #1f1f1f;
		    border-radius: 5px;
		    position: relative;
		}
		.id-card-holder:after {
		    content: '';
		    width: 7px;
		    display: block;
		    background-color: #0a0a0a;
		    height: 100px;
		    position: absolute;
		    top: 105px;
		    border-radius: 0 5px 5px 0;
		}
		.id-card-holder:before {
		    content: '';
		    width: 7px;
		    display: block;
		    background-color: #0a0a0a;
		    height: 100px;
		    position: absolute;
		    top: 105px;
		    left: 222px;
		    border-radius: 5px 0 0 5px;
		}
		.id-card {
			
			background-color: #fff;
			padding: 10px;
			border-radius: 10px;
			text-align: center;
			box-shadow: 0 0 1.5px 0px #b9b9b9;
		}
		.id-card img {
			margin: 0 auto;
		}
		.header img {
			width: 100px;
    		margin-top: 15px;
		}
		.photo img {
			width: 80px;
    		margin-top: 15px;
		}
		h2 {
			font-size: 15px;
			margin: 5px 0;
		}
		h3 {
			font-size: 12px;
			margin: 2.5px 0;
			font-weight: 300;
		}
		.qr-code img {
			width: 50px;
		}
		p {
			font-size: 5px;
			margin: 2px;
		}
		.id-card-hook {
			background-color: #000;
		    width: 70px;
		    margin: 0 auto;
		    height: 15px;
		    border-radius: 5px 5px 0 0;
		}
		.id-card-hook:after {
			content: '';
		    background-color: #d7d6d3;
		    width: 47px;
		    height: 6px;
		    display: block;
		    margin: 0px auto;
		    position: relative;
		    top: 6px;
		    border-radius: 4px;
		}
		.id-card-tag-strip {
			width: 45px;
		    height: 40px;
		    background-color: #0950ef;
		    margin: 0 auto;
		    border-radius: 5px;
		    position: relative;
		    top: 9px;
		    z-index: 1;
		    border: 1px solid #0041ad;
		}
		.id-card-tag-strip:after {
			content: '';
		    display: block;
		    width: 100%;
		    height: 1px;
		    background-color: #c1c1c1;
		    position: relative;
		    top: 10px;
		}
		.id-card-tag {
			width: 0;
			height: 0;
			border-left: 100px solid transparent;
			border-right: 100px solid transparent;
			border-top: 100px solid #0958db;
			margin: -10px auto -30px auto;
		}
		.id-card-tag:after {
			content: '';
		    display: block;
		    width: 0;
		    height: 0;
		    border-left: 50px solid transparent;
		    border-right: 50px solid transparent;
		    border-top: 100px solid #d7d6d3;
		    margin: -10px auto -30px auto;
		    position: relative;
		    top: -130px;
		    left: -50px;
		}


</style>

<?php $student_info = $this->db->get_where('student', array('student_id'=> $param2))->result_array();
        foreach ($student_info as $key => $student):
        $student_name = $student['name'];
?>

        <div class="id-card-tag"></div>
            <div class="id-card-tag-strip"></div>
            <div class="id-card-hook"></div>
            <div class="id-card-holder">
                <div class="id-card">
                    <div class="header">
                        <img src="<?php echo base_url();?>uploads/logo.png" style="max-width:30px; max-height:30px" >
                        <h5 align="center"><?php echo $this->db->get_where('settings', array('type' => 'system_name'))->row()->description;?></h5>
                    </div>
                    <div class="photo">
                        <img src="<?php echo $this->crud_model->get_image_url('student', $student['student_id']);?>">
                    </div>
                    <h2><?php echo $student_name;?></h2>
                    <div class="qr-code">
                    <img style="-webkit-user-select: none; width:100px; height:30px; 
                    background-position: 0px 0px, 10px 10px;background-size: 20px 20px;
                    background-image:linear-gradient(45deg, #eee 25%, transparent 25%, transparent 75%, #eee 75%, #eee 100%),linear-gradient(45deg, #eee 25%, white 25%, white 75%, #eee 75%, #eee 100%);" 
                    src="<?php echo base_url();?>admin/create_barcode/<?php echo $student['roll'];?>">
                    </div>
                    <h3><?php echo $this->db->get_where('class', array('class_id' => $student['class_id']))->row()->name ;?></h3>
                    <hr>
                    <p>
                    <?php echo $this->db->get_where('settings', array('type' => 'address'))->row()->description;?><p>
                </div>
        </div>
<?php endforeach;?>