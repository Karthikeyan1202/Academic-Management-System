 <!--Header Wrap Start-->
 <header>
    	<!--Top Strip Wrap Start-->
        <div class="top_strip">
        	<div class="container">
                <div class="top_location_wrap">
                    <p><i class="fa fa-map-marker"></i><?php echo $this->db->get_where('settings', array('type' => 'address'))->row()->description; ?></p>
                </div>
                <div class="top_ui_element">
                    <ul>
                        <li><i class="fa fa-envelope"></i><a href="mailto:<?php echo $this->db->get_where('settings', array('type' => 'system_email'))->row()->description; ?>"><?php echo $this->db->get_where('settings', array('type' => 'system_email'))->row()->description; ?></a></li>
                        <li><i class="fa fa-phone"></i><a href="tel:<?php echo $this->db->get_where('settings', array('type' => 'phone'))->row()->description; ?>"><?php echo $this->db->get_where('settings', array('type' => 'phone'))->row()->description; ?></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--Top Strip Wrap End-->