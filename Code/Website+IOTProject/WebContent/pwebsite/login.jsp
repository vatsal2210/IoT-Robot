<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<title>VATSAL N SHAH</title>

  	<jsp:include page="script.jsp"></jsp:include>

</head>
<body>

<!-- ------------------------------------------------------------------------------------------------ -->

     <header class="header">
	     <div class="top clearfix">
			<div class="title"><a href="/PersonalWebsite/VIndex" target="_blank">Vatsal N Shah</a>
	       	</div>
	     </div>
    </header>
 
<!-- ------------------------------------------------------------------------------------------------ -->
 <div class="slide-out-widgets">
     <div class="slide-out-widget">
		<h3>Login</h3>
		<div class="login-top">
			<form method="post" action="/PersonalWebsite/VLogin" class="form-horizontal contact-form">
				
				<div class="form-group">
					 <label class="col-sm-3 control-label">Email </label>
					 	 <div class="col-sm-9">
							<input type="text" class="contact-email" placeholder="Email Adress" required="" name="email">
						</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label">Password</label>
					<div class="col-sm-9">
						<input type="password"  class="contact-password" placeholder="Password" required="" name="password">
					</div>
                </div>
                
                 <div class="form-group">
                        <div class="col-sm-9 col-sm-offset-3">
				       		<!--    	<input type="submit" class="button solid-button purple" value="Submit" name="sub1">  -->
				        	<button type="submit" class="button solid-button purple" name="sub1">Login</button>
                        </div>
                 </div>
				           
			</form>
		</div>

 		<div class="contact-loading alert alert-info form-alert">
            <span class="message">Loading...</span>
            <button type="button" class="close" data-hide="alert" aria-label="Close"><i class="fa fa-times"></i>
            </button>
        </div>
        
        <div class="contact-success alert alert-success form-alert">
            <span class="message">Successfully register!</span>
            <button type="button" class="close" data-hide="alert" aria-label="Close"><i class="fa fa-times"></i>
            </button>
        </div>
    <%--     
        <div class="contact-error alert alert-danger form-alert">
            <span class="message">
			<%@
				String error = request.getAttribute("ERROR").toString();
				out.println(error);
			%>            
            </span>
            <button type="button" class="close" data-hide="alert" aria-label="Close"><i class="fa fa-times"></i>
            </button>
        </div>        
        		 --%>
        		 
        		 
		<div class="create">
			<h5 style="color:red">
				<%
				if(request.getParameter("sub1")!=null)
					{
						String error = request.getAttribute("ERROR").toString();
						out.println(error);
					}
				%>
			</h5> 
		</div>	
		
		<div class="create">
				<h3 style="color:red"> </h3>
				<a class="hvr-sweep-to-right" href="VRegister">Create an Account</a>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>

<!-- ------------------------------------------------------------------------------------------------ -->

    <!-- Footer -->
    <footer class="footer">
 		
        <div class="top">
            <jsp:include page="fotter.jsp"></jsp:include>
        </div>
        <!-- end .footer -->

        <div class="bottom">Copyright &copy; VatsalNShah. All Rights Reserved.</div>
        <!-- end .bottom -->
    </footer>
    <!-- end .footer -->

<!-- ------------------------------------------------------------------------------------------------ -->

    <!-- jQuery -->
    <script src="clientassests/js/jquery-1.11.2.min.js"></script>
    <!-- Bootstrap -->
    <script src="clientassests/js/bootstrap.min.js"></script>
    <!-- Inview -->
    <script src="clientassests/js/jquery.inview.min.js"></script>
    <!-- SmoothScroll -->
    <script src="clientassests/js/smoothscroll.js"></script>
    <!-- jQuery Knob -->
    <script src="clientassests/js/jquery.knob.min.js"></script>
    <!-- Owl Carousel -->
    <script src="clientassests/js/owl.carousel.min.js"></script>
    <!-- Isotope -->
    <script src="clientassests/js/isotope.pkgd.min.js"></script>
    <!-- Images Loaded -->
    <script src="clientassests/js/imagesloaded.pkgd.min.js"></script>
    <!-- google maps -->
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <!-- Scripts.js -->
    <script src="clientassests/js/scripts.js"></script>


<!-- ------------------------------------------------------------------------------------------------ -->


</body>
</html>