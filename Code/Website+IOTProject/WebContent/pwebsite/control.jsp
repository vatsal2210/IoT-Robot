<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<title>Robot Control</title>

	<jsp:include page="script.jsp"></jsp:include>
	
</head>
<body>

<!-- ------------------------------------------------------------------------------------------------ -->
	<script>
		
			window.setInterval(refreshDistance, 2000);
	 
			function refreshDistance() 
			{
			    $.ajax({url: "/PersonalWebsite/RecordDistance", success: function(result){
			     $("#distance").html(result);
			    }});
			    $.ajax({url: "/PersonalWebsite/RecordObstacle", success: function(result){
				     $("#obstacle").html(result);
				    }});
			}
			
			function changeaction(actionfor)
			{
			    surl = "/PersonalWebsite/ActionControl?action=" + actionfor;
				$.ajax({
				    url: surl,
				    context: document.body,
				    success: function(){
				    }
			    	});
			 }       	
	</script>
	
	
	 <script>
      function startDictation() {
        if (window.hasOwnProperty('webkitSpeechRecognition')) {
     
          var recognition = new webkitSpeechRecognition();
     
          recognition.continuous = false;
          recognition.interimResults = false;
     
          recognition.lang = "en-US";
          recognition.start();
     
          recognition.onresult = function(e) {
            recognition.stop();

            switch(e.results[0][0].transcript) {
            case "forward":
            	changeaction('Forward');
                break;
            case "reverse":
            	changeaction('Reverse');
                break;
            case "river":
            	changeaction('Reverse');
                break;
            case "rivers":
            	changeaction('Reverse');
                break;
            case "left":
            	changeaction('Left');
                break;
            case "map":
            	changeaction('Left');
                break;
            case "right":
            	changeaction('Right');
                break;
            case "wife":
            	changeaction('Right');
                break;
            case "ride":
            	changeaction('Right');
                break;
            case "write":
            	changeaction('Right');
                break;
            case "stop":
            	changeaction('Stop');
                break;
            default:
                alert("Please speak in English. (" + e.results[0][0].transcript + ")");
                break;                
            }
          };
     
          recognition.onerror = function(e) {
            recognition.stop();
          }
     
        }
      }
    </script>
	
<!-- ------------------------------------------------------------------------------------------------ -->
 
  <header class="header">
	     <div class="top clearfix">
			<div class="title"><a href="/PersonalWebsite/VIndex" target="_blank">Vatsal N Shah</a>
	       	</div>
	     </div>
    </header>
    
<!-- ------------------------------------------------------------------------------------------------ -->
	<form id="mainform" method="get" action="/"> 
	<input id="action" name="action" type="hidden" />
	
	
	<h2><center>Control Robot </center>  </h2> 
				
			<table style="width:100%; border-collapse: collapse; border-spacing: 0;">
				<tr> 
					<td width="50%" align="center">&nbsp;<div id="distance"></div></td>
					<td width="50%" align="center">&nbsp;<div id="obstacle"></div></td> 
				</tr>
				<tr>	 
 					<td colspan="2" align="center">  
 					  <img onclick="startDictation()" src="clientassests/extraimages/search.png" width = "50" height="50"/> 
 					</td>
 				</tr>
			</table>
					
			<table style="width:100%; border-collapse: collapse; border-spacing: 0;">
				<tr>
					
					<td> <input type="button" onclick="changeaction('Forward');" value="Forward" style= "color:black" class="button solid-button purple"> </td>  
					
					<td> <input type="button" onclick="changeaction('Reverse');" value="Reverse" style= "color:black" class="button solid-button purple"> </td> 
				
					<td> <input type="button" onclick="changeaction('Left');" value="Left" style= "color:black" class="button solid-button purple" > </td>
						
					<td> <input type="button" onclick="changeaction('Right');" value="Right" style= "color:black" class="button solid-button purple" >  </td>

					<td> <input type="button" onclick="changeaction('Stop');" value="Stop" style= "color:black" class="button solid-button purple" > </td>

				</tr>	
			</table>
			
			<br> <br>
			
			<table style="width:100%">
				<tr>
					<td>
						<img src="http://192.168.1.3:8080/?action=stream" height="350" width="750">
					</td>
				</tr>
			</table>
	  
  
	</form>		 

<!-------------------------------------------------------------------------------------------------- -->		
	<!-- Footer -->
		<footer class="footer">
		
		    <div class="top"> <jsp:include page="fotter.jsp"></jsp:include> </div>
		
		    <div class="bottom">Copyright &copy; VatsalNShah. All Rights Reserved.</div>
		</footer>
<!-------------------------------------------------------------------------------------------------- -->

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
	<script type="text/javascript"> </script>

<!-- ------------------------------------------------------------------------------------------------ -->

	</body>
	
</html>