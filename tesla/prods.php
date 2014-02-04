
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<? include_once('utils.php'); ?>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="style.css" type="text/css" />
<script type="text/javascript" src="roll.js"></script>

</head>

<body>

<div id="container" align="center">

	<div id="logo"></div>

	<div id="logotext"></div>

	<div style="height:125px;"></div>

	<div id="nav1">
		<a class="navlinks1" href=""><img src="img/i1.jpg" onmouseover="this.src='img/i1x.jpg'" onmouseout="this.src='img/i1.jpg'"></a>
		<a class="navlinks1" href=""><img src="img/i2x.jpg" onmouseover="this.src='img/i2x.jpg'" onmouseout="this.src='img/i2x.jpg'"></a>
		<a class="navlinks1" href=""><img src="img/i3.jpg" onmouseover="this.src='img/i3x.jpg'" onmouseout="this.src='img/i3.jpg'"></a>
		<a class="navlinks1" href=""><img src="img/i4.jpg" onmouseover="this.src='img/i4x.jpg'" onmouseout="this.src='img/i4.jpg'"></a>
		<a class="navlinks1" href=""><img src="img/i5.jpg" onmouseover="this.src='img/i5x.jpg'" onmouseout="this.src='img/i5.jpg'"></a>

		<div id="search"><input type="text" name="firstname" value="Search here" /></div>
	</div>

	<div style="height:15px;"></div>




	<div id="content" style="height:450px;">

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<?

function show_product_menu()
{

?>
<div id="productmenu">
	<div style="height:10px; background:rgb(26,26,26);"></div>
	<div id="pmenuhead"><h3>PRODUCTS</h3></div>
	<div style="height:8px;  background:rgb(26,26,26);"></div>
	<div id="pmenuitems">
	<div id="pmenutop"></div>
<?
		
	$res=execute_query("SELECT * FROM PRODUCT");

	$i=0;
	
	while($row=mysql_fetch_assoc($res))
	{


	    echo '<h4 class="menuitem" onmouseover="pRoll('.$i.')"
	    onmouseout="pOut()" onclick="pChange();">'.$row['ProductName'].'</h4>\n';

	    $i++;	  
	}


	?>
	
	<div id="pmenubottom"></div>
	<div id="pmenuhide"></div>
   </div>

</div>

<?
}

show_product_menu();

?>

<div id="dhtmldiv"></div>

<!--<div class="products">
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
     <div style="background:rgb(55,0,0); height:400px; border: 2px white solid;"></div>
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
</div>
-->
<?

function show_products()
{
    
    $res=execute_query("SELECT ProductID FROM PRODUCT");

    while($row=mysql_fetch_row($res))
	{

	    echo '<div class="products">\n';

	    echo '<div style="background:rgb(55,0,0); height:400px; border: 2px white solid; ">\n';
	    
	    show_product($row[0]);

	    echo '</div>\n</div>\n\n';
	}
}

    show_products();
    
    ?>

    </div> <!-- content div -->




	<div style="height:15px;"></div>

	<div id="nav2">
		<a class="navlinks2" href=""><img src="img/j1.jpg" onmouseover="this.src='img/j1x.jpg'" onmouseout="this.src='img/j1.jpg'"></a>
		<a class="navlinks2" href=""><img src="img/j2.jpg" onmouseover="this.src='img/j2x.jpg'" onmouseout="this.src='img/j2.jpg'"></a>
		<a class="navlinks2" href=""><img src="img/j3.jpg" onmouseover="this.src='img/j3x.jpg'" onmouseout="this.src='img/j3.jpg'"></a>
		<a class="navlinks2" href=""><img src="img/j4.jpg" onmouseover="this.src='img/j4x.jpg'" onmouseout="this.src='img/j4.jpg'"></a>
		<a class="navlinks2" href=""><img src="img/j5.jpg" onmouseover="this.src='img/j5x.jpg'" onmouseout="this.src='img/j5.jpg'"></a>
	</div>

	<div style="height:10px;"></div>

	<div id="nav3" align="center">
		<a class="navlinks3" href=""><img src="img/k1.jpg" onmouseover="this.src='img/k1x.jpg'" onmouseout="this.src='img/k1.jpg'"></a>
		<a class="navlinks3" href=""><img src="img/k2.jpg" onmouseover="this.src='img/k2x.jpg'" onmouseout="this.src='img/k2.jpg'"></a>
		<a class="navlinks3" href=""><img src="img/k3.jpg" onmouseover="this.src='img/k3x.jpg'" onmouseout="this.src='img/k3.jpg'"></a>
		<a class="navlinks3" href=""><img src="img/k4.jpg" onmouseover="this.src='img/k4x.jpg'" onmouseout="this.src='img/k4.jpg'"></a>
		<a class="navlinks3" href=""><img src="img/k5.jpg" onmouseover="this.src='img/k5x.jpg'" onmouseout="this.src='img/k5.jpg'"></a>
	</div>

	<div style="height:5px;"></div>

	<div id="footer" align="center">Copyrights © 2008 PhiTesla</div>



</div>

<script type="text/javascript">initRoll();</script>

</body>
</html>





