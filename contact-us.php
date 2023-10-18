<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Restaurant Website</title>
     <?php 
  	   include('css_files.php'); 
  	 ?>  
 </head>
 <body>
     <div class="loader"><img src="images/loading.gif" alt="" /></div>
        <!--banner section-->
        <section>
         <div class="banner">
         <img class="img-responsive logo1" src="images/logo.png"/>
		 <img src="images/contact_us.jpg"  class="img-responsive">
	</div>
      <!--banner section close-->  
      <?php 
  	   include('nav_bar.php'); 
  	 ?>
</section>
<div class="clearfix"></div> 

<section>
    

    <div class="container-fluid">
        <div class="col-md-12">
            <div class="section-title">
        	<div class="main_h3" style="color:#0CF;" align="center">Contact Us</div>
         <div class="line" align="center"><img class="img-responsive" src="images/undr.png" /></div> 
    </div>
    </div>
    <div class="clearfix p20_0"></div>
    <div class="row">
    	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d831479.0963651815!2d79.74026847848434!3d14.513176758734042!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4c8cca0e958771%3A0xd3036c2025161f55!2sNellore%2C+Andhra+Pradesh!5e0!3m2!1sen!2sin!4v1496760823694" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
    <div class="clearfix p20_0"></div>
    <div class="container">
         <div class="col-md-6">
           
             <div class="contact-details">
                <h4>&nbsp; Some Restaurant Name</h4>
                <ul>
                    <li>Location Name, Street,</li>
                    <li>Opp Landmark, Nellore,</li>
                    <li>Andhra Pradesh,</li>
                    <li>India. Pin: 524004</li>
                    <li>0861 2XXXX16</a></li>
                    <li><a href="mailto:sample@gmail.com">freetimelearn@gmail.com</a></li>
                    <li><a href="http://www.freetimelearn.com" target="_blank">www.freetimelearn.com</a></li>
                </ul>
            </div>
        </div>
    <div class="col-md-6">
       <div id="contact_form" class="row">
       <?php
	   		include('db.php');
	   		if(isset($_POST['submit'])){
				$name = $_POST['name'];
				$email = $_POST['email'];
				$mob = $_POST['mobile'];
				$message = $_POST['message'];
				$query = $db->query("INSERT INTO `contact`(`id`, `name`, `email`, `mobile`, `message`) VALUES ('','$name','$email','$mob','$message')") or die(mysqli_error());
				if($query){
					echo "<script>alert('Contact Details Saved Successfully');</script>";
				}
			}
	   ?>
		<form role="form" id="feedbackForm" action="" method="post">
        <div class="form-group">
            <label class="control-label" for="name">Name *</label>
            <div class="input-group">
            <input type="text" class="form-control" name="name" placeholder="Enter your name" />
            <span class="input-group-addon"><i class="fa fa-user" style="color:#0CF;"></i></span>
        	</div>
        </div>

        <div class="form-group">
            <label class="control-label" for="email">Email Address *</label>
            <div class="input-group">
            <input type="email" class="form-control" name="email" placeholder="Enter your email" />
            <span class="input-group-addon"><i class="fa fa-envelope" style="color:#0CF;"></i></span>
            </div>
        </div>
        
        <div class="form-group">
            <label class="control-label" for="email">Mobile Number *</label>
            <div class="input-group">
            <input type="text" class="form-control" name="mobile" placeholder="9963XXXX68" />
            <span class="input-group-addon"><i class="fa fa-mobile" style="color:#0CF;"></i></span>
            </div>
        </div>
        
        <div class="form-group">
        <label class="control-label" for="message">Message *</label>
        <div class="input-group">
        <textarea rows="5" cols="30" class="form-control" name="message" placeholder="Enter your message" ></textarea>
        <span class="input-group-addon"><i class="fa fa-edit" style="color:#0CF;"></i></span>
        </div>
        <span class="help-block" style="display: none;">Please enter a message.</span>
        </div>
        
<button type="submit" name="submit" class="cus_form_btn">&nbsp; &nbsp; SEND &nbsp; &nbsp;</button>
<button type="reset" class="cus_form_btn">&nbsp; &nbsp; CLEAR &nbsp; &nbsp; </button>
</form>
			</div>
		</div>
	</div>
</div>
            
</section> 

<?php 
	include('footer.php');
	include('js_files.php');
?>
</body>
</html>
