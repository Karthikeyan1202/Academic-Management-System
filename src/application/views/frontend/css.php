<?php $system_name =  $this->db->get_where('settings', array('type' => 'system_name'))->row()->description;?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $page_title;?> - <?php echo $system_name;?></title>
    <link rel="icon" sizes="16x16" href="<?php echo base_url();?>uploads/logo.png">
    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url();?>frontend/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bx-Slider StyleSheet CSS -->
    <link href="<?php echo base_url();?>frontend/css/jquery.bxslider.css" rel="stylesheet"> 
    <!-- Font Awesome StyleSheet CSS -->
    <link href="<?php echo base_url();?>frontend/css/font-awesome.css" rel="stylesheet">
    <link href="<?php echo base_url();?>frontend/css/svg-style.css" rel="stylesheet">
    <!-- Pretty Photo CSS -->
    <link href="<?php echo base_url();?>frontend/css/prettyPhoto.css" rel="stylesheet">
    <!-- Widget CSS -->
    <link href="<?php echo base_url();?>frontend/css/widget.css" rel="stylesheet">
    <!-- DL Menu CSS -->
	<link href="<?php echo base_url();?>frontend/js/dl-menu/component.css" rel="stylesheet">
    <!-- Typography CSS -->
    <link href="<?php echo base_url();?>frontend/css/typography.css" rel="stylesheet">
    <!-- Animation CSS -->
    <link href="<?php echo base_url();?>frontend/css/animate.css" rel="stylesheet">
    <!-- Owl Carousel CSS -->
    <link href="<?php echo base_url();?>frontend/css/owl.carousel.css" rel="stylesheet">
    <!-- Shortcodes CSS -->
    <link href="<?php echo base_url();?>frontend/css/shortcodes.css" rel="stylesheet">
	<!-- Custom Main StyleSheet CSS -->
    <link href="<?php echo base_url();?>frontend/style.css" rel="stylesheet">
    <!-- Color CSS -->
    <link href="<?php echo base_url();?>frontend/css/color.css" rel="stylesheet">
    <!-- Responsive CSS -->
    <link href="<?php echo base_url();?>frontend/css/responsive.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>frontend/toast-master/css/jquery.toast.css" rel="stylesheet">
 
  </head>

  <body>