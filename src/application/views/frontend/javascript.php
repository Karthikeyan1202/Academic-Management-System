
  <!--Bootstrap core JavaScript-->
  <script src="<?php echo base_url();?>frontend/js/jquery.js"></script>
    <script src="<?php echo base_url();?>frontend/js/bootstrap.min.js"></script>
    <!--Bx-Slider JavaScript-->
	<script src="<?php echo base_url();?>frontend/js/jquery.bxslider.min.js"></script>
    <!--Dl Menu Script-->
	<script src="<?php echo base_url();?>frontend/js/dl-menu/modernizr.custom.js"></script>
	<script src="<?php echo base_url();?>frontend/js/dl-menu/jquery.dlmenu.js"></script>
    <!--Owl Carousel JavaScript-->
	<script src="<?php echo base_url();?>frontend/js/owl.carousel.js"></script>
    <!--Time Counter Javascript-->
    <script src="<?php echo base_url();?>frontend/js/jquery.downCount.js"></script>
    <!--Pretty Photo Javascript-->
    <script src="<?php echo base_url();?>frontend/js/jquery.prettyPhoto.js"></script>
    <!--Way Points Javascript-->
    <script src="<?php echo base_url();?>frontend/js/waypoints-min.js"></script>
    <!--Custom JavaScript-->
	<script src="<?php echo base_url();?>frontend/js/custom.js"></script>

  <script src="<?php echo base_url();?>frontend/toast-master/js/jquery.toast.js"></script>
  <?php if (($this->session->flashdata('flash_message')) != ""): ?>
    <script type="text/javascript">
      $(document).ready(function() {
          $.toast({
        heading: 'Congratulations!!!',
              text: '<?php echo $this->session->flashdata('flash_message'); ?>',
              position: 'top-right',
              loaderBg: '#ff6849',
              icon: 'success',
              hideAfter: 3500,
              stack: 6
          })
      });
      </script>
    <?php endif; ?> 


    <?php if (($this->session->flashdata('error_message')) != ""): ?>
    <script type="text/javascript">
      $(document).ready(function() {
          $.toast({
        heading: 'Error!!!',
              text: '<?php echo $this->session->flashdata('error_message'); ?>',
              position: 'top-right',
              loaderBg: '#f56954',
              icon: 'warning',
              hideAfter: 3500,
              stack: 6
          })
      });
      </script>
    <?php endif; ?> 

    <script type="text/javascript">
            $(document).ready(function () {
                $('.set_langs').on('click', function () {
                    var lang_url = $(this).data('href');
                    $.ajax({url: lang_url, success: function (result) {
                            location.reload();
                    }});
                });
            });
    </script>

  </body>
</html>
