<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="template" fragment="true" %>


<!DOCTYPE html>


<html>
    
    <head>
        <meta
        	charset="utf-8" 
            name="viewport" 
            content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
        />
        
        <link href="css/jquery-ui.css" type="text/css" rel="stylesheet" />
		<link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		<link href="font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
		<link href="css/app.css" type="text/css" rel="stylesheet" />
    </head>
    

    <body>
        
        <header class="my-padding-bottom-19 my-border-bottom">
			<img src="images/banner.jpg" class="my-margin-bottom-19" />
			
			<h2>
				<strong>My contacts</strong>
			</h2>
		</header>
       
       
       	<section class="my-padding-top-28 my-padding-bottom-40">
       		<jsp:invoke fragment="template" />
       	</section>
        
        
        <footer class="my-padding-top-19 my-border-top">
			<em>VNUK-2019 - Modern Coding</em>
		</footer>
        
        
        <script type="text/javascript" src="js/jquery.js"></script>
		<script src="js/jquery-ui.js" type="text/javascript"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
		
		<script>
		    $("#date-of-birth").datepicker({dateFormat: 'dd/mm/yy'});
		</script>

    </body>

</html>