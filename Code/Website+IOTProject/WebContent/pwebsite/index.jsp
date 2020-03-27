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

            <!-- Home -->
            <section id="section1" class="no-padding-bottom active">
                <div class="container">
                   <jsp:include page="section1.jsp"></jsp:include>
                </div>
                <!-- end .container -->
            </section>
            <!-- end #section1 -->

            <!-- About -->
            <section id="section2">
                <div class="container">
                     <jsp:include page="section2.jsp"></jsp:include>
                </div>
                <!-- end .container -->
            </section>
            <!-- end #section1 -->

            <!-- Skills -->
            <section id="section3">
                <div class="container">
                    <jsp:include page="section3.jsp"></jsp:include>
                </div>
                <!-- end .container -->
            </section>
            <!-- end #section1 -->

            <!-- Experience -->
            <section id="section4">
                <div class="container">
                    <jsp:include page="section4.jsp"></jsp:include>
                </div>
                <!-- end .container -->
            </section>
            <!-- end #section1 -->

            <!-- Education -->
            <section id="section5">
                <div class="container">
                    <jsp:include page="section5.jsp"></jsp:include>
                </div>
                <!-- end .container -->
            </section>
            <!-- end #section1 -->

            <%-- <!-- Portfolio -->
            <section id="section6">
                <div id="wowslider-container1">
                    <jsp:include page="section6.jsp"></jsp:include>
                </div>
                <!-- end .container -->
            </section>
            <!-- end #section1 -->
            <!-- end .portfolio-wrapper --> --%>

        <%--     <!-- Blog -->
            <section id="section7">
                <div class="container">
                    <jsp:include page="section7.jsp"></jsp:include>
                </div>
                <!-- end .container -->
            </section> --%>
            <!-- end #section1 -->

            <!-- Contact -->
            <section id="section8">
                <div class="container">
                   <jsp:include page="section8.jsp"></jsp:include>
                </div>
                <!-- end .container -->
            </section>
            <!-- end #section1 -->
            
           <%--   <!-- Project -->
            <section id="section9">
                <div class="container">
                   <jsp:include page="register.jsp"></jsp:include>
                </div>
            </section>
            <!-- end #section1 -->  --%>

        </div>
        <!-- end .sections-wrapper -->
    </div>
    <!-- end .sections -->

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