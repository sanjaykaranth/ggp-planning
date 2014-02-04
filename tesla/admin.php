<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<? include_once('utils.php'); ?>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="style.css" type="text/css" />


</head>





<body>


<div id="logo"></div>

<div id="logotext"></div>

<div id="search">
	<input type="text" name="firstname" value="Search here" />
	<div id="searcharrow"></div>
</div>


<div id="navigation">

	<a class="top1" href=""><span>Home</span></a>
	<a class="top2" href="product.php"><span>Products</span></a>
	<a class="top1" href=""><span>Services</span></a>
	<a class="top1" href=""><span>About Us</span></a>
	<a class="top1" href=""><span>Downloads</span></a>	
</div>




<div id="container">

	<div id="content">
        <?

$supp=supplier_orders();

echo "<table border=1 bordercolor=white  width='50%' align='center'>";
foreach($supp as $sid=>$products)
{

    

    echo "<tr><th colspan='2' align='left'>".get_supplier_name($sid)."</th></tr>\n";
    
    foreach($products as $pid=>$q)
	{
	    echo "<tr><td align='left'>".get_product_name($pid)."</td><td align='left'> ".$q."</td></tr>";
	}

}
    echo "</table>";
        ?>

	</div>

</div>



<div id="footer">

	<div id="foot1">

		<a href="*">Order Status</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="cart.php">Cart</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="*">Shipping</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="*">Contact Us</a>
		<a href="*">Careers</a>

	</div>

	<div id="foot2">
	&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="*">Terms and Conditions</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="*">Privacy Policy</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="*">Shipping</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="*">Returns</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="*">Warranty</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	</div>


	<div id="foot3">Copyrights © 2008 PhiTesla</div>


</div>
