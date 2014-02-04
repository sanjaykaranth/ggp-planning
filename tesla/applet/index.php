<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<?  include_once('../utils.php'); ?>
	<head>
	        <!-- charset must remain utf-8 to be handled properly by Processing -->
		<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
		<link rel="stylesheet" href="../style.css" type="text/css" />
		<title>Radon</title>
		
		<style type="text/css">
		/* <![CDATA[ */
	
		body {
  		  margin-left: 20px;
                  margin-top: 130px;
		  font-family: verdana, geneva, arial, helvetica, sans-serif; 
		  font-size: 11px; 
		  /*background-color: #ddddcc; */
		  text-decoration: none; 
		  font-weight: normal; 
		  line-height: normal; 
		}
		 
		a          { color: #3399cc; }
		a:link     { color: #3399cc; text-decoration: underline; }
		a:visited  { color: #3399cc; text-decoration: underline; }
		a:active   { color: #3399cc; text-decoration: underline; }
		a:hover    { color: #3399cc; text-decoration: underline; }
	
		/* ]]> */
		</style>
	 


	</head>
	<body>
		<div id="logo"></div>

		<div id="logotext"></div>
		<div id="container">
			<div id="content">
			
			<!--[if !IE]> -->
				<object classid="java:Radon.class" 
            			type="application/x-java-applet"
            			archive="Radon.jar"
            			width="800" height="500"
            			standby="Loading simulator..." >
            			
					<param name="archive" value="Radon.jar" />
				
					<param name="mayscript" value="true" />
					<param name="scriptable" value="true" />
				
					<param name="image" value="loading.gif" />
					<param name="boxmessage" value="Loading simulator software..." />
					<param name="boxbgcolor" value="#FFFFFF" />
				
					<param name="test_string" value="outer" />
			<!--<![endif]-->
				
				<object classid="clsid:8AD9C840-044E-11D1-B3E9-00805F499D93" 
						codebase="http://java.sun.com/update/1.5.0/jinstall-1_5_0_15-windows-i586.cab"
						width="800" height="500"
						standby="Loading Processing software..."  >
						
					<param name="code" value="Radon" />
					<param name="archive" value="Radon.jar" />
					
					<param name="mayscript" value="true" />
					<param name="scriptable" value="true" />
					
					<param name="image" value="loading.gif" />
					<param name="boxmessage" value="Loading Simulator software..." />
					<param name="boxbgcolor" value="#FFFFFF" />
					
					<param name="test_string" value="inner" />
					
					<p>
						<strong>
							This browser does not have a Java Plug-in.
							<br />
							<a href="http://java.sun.com/products/plugin/downloads/index.html" title="Download Java Plug-in">
								Get the latest Java Plug-in here.
							</a>
						</strong>
					</p>
				
				</object>
				
			<!--[if !IE]> -->
				</object>
			<!--<![endif]-->
			
			</div>
			
			<p>
			
			</p>
			
			<!--<p>
			Source code: <a href="Radon.pde">Radon</a> <a href="RadonClass.pde">RadonClass</a> <a href="dashboard_buttons.pde">dashboard_buttons</a> 
			</p> -->
			
			
		</div>
	</body>
</html>
