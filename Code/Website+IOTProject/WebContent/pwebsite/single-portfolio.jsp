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
 
    <!-- Slide Out -->
    <div class="slide-out-overlay"></div>
        <div class="slide-out">
    		<jsp:include page="slideout.jsp"></jsp:include>
    	</div>
   <!-- end .slide-out -->

<!-- ------------------------------------------------------------------------------------------------ -->

    <!-- TopHeader -->
    <header class="header">
        <div class="top clearfix">
            <jsp:include page="topheader.jsp"></jsp:include>
        </div>
        <!-- end TopHeader -->
        
     	<!-- Header --> 
        <div class="bottom clearfix">
   			<jsp:include page="header.jsp"></jsp:include>
            <!-- end .main-nav -->
        </div>
        <!-- end .bottom -->
    </header>
    <!-- end .Topheader -->
 
 <!-- ------------------------------------------------------------------------------------------------ -->   
    
    <div class="responsive-menu">
        <a href="#" class="responsive-menu-close">Close <i class="ion-android-close"></i></a>
        <nav class="responsive-nav"></nav>
        <!-- end .responsive-nav -->
    </div>
    <!-- end .responsive-menu -->

    <!-- Section Navigation -->
    <div class="section-nav">
         <nav class="section1">
            <a href="#section2" class="forward"><i class="md md-chevron-right"></i></a>
            <a href="#section1" class="backward"><i class="md md-chevron-left"></i></a>
 		 </nav>
    </div>
    <!-- end .section-nav -->
<!-- ------------------------------------------------------------------------------------------------ -->   
	
		<!-- Sections -->
		<div class="sections">
			<div class="sections-wrapper clearfix">

				<!-- Single Portfolio -->
				<section class="active">
					<div class="container">
						<div class="row">
							
							
							<div class="col-sm-8">
								<div class="portfolio-slider owl-carousel">
									<div><img src="clientassests/clientassests/images/portfolio-slider.jpg" alt="alt text" class="img-responsive"></div>
									<div><img src="clientassests/images/portfolio-slider.jpg" alt="alt text" class="img-responsive"></div>
									<div><img src="clientassests/images/portfolio-slider.jpg" alt="alt text" class="img-responsive"></div>
								</div> <!-- end .portfolio-slider -->
								<div class="row related-images">
									<div class="col-sm-6"><a href="#"><img src="clientassests/images/portfolio-related01.jpg" alt="alt text" class="img-responsive"></a></div>
									<div class="col-sm-6"><a href="#"><img src="clientassests/images/portfolio-related02.jpg" alt="alt text" class="img-responsive"></a></div>
								</div> <!-- end .row -->
							</div> <!-- end .col-sm-8 -->
							
							
							<div class="col-sm-4">
								<p class="button-row portfolio-button-row"><a href="#" class="button solid-button white">Prev Project</a><a href="#" class="button solid-button purple">Next Project</a></p>
								<div class="portfolio-details">
									<h4>Shopping Bag</h4>
									<p>Omnis iste natus error sit volup taisue mose accusantium doloremque ladain tium, totam rem aperiam, eaque ipama quae ab illo inventore veritatis et qasil architecto beatae vitae. dicta sunt epla cabo. Nemo enim ipsam volupt atemtr quia voluptas aut odit fugit, sed quia consequuntur</p>
									<div class="portfolio-meta">
										<span>Date:</span>
										22 Mar 2015
									</div> <!-- end .portfolio-meta -->
									<div class="portfolio-meta">
										<span>Client:</span>
										Osambem
									</div> <!-- end .portfolio-meta -->
									<div class="portfolio-meta">
										<span>Agency:</span>
										Design Media Wavs
									</div> <!-- end .portfolio-meta -->
									<div class="portfolio-meta">
										<span>Type:</span>
										Branding, Illustrator
									</div> <!-- end .portfolio-meta -->
									<p><a href="#" class="button solid-button purple">Visit Website</a></p>
								</div> <!-- end .portfolio-details -->
							</div> <!-- end .col-sm-4 -->
							
							
						</div> <!-- end .row -->
					</div> <!-- end .container -->
				</section> <!-- end #section1 -->

			</div> <!-- end .sections-wrapper -->
		</div> <!-- end .sections -->
		
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