<?

include_once('displayutils.php');

function update_cart($pid, $quantity)
{
    if($_SESSION['checkedout']==1)

    {
	echo "<p>You have already checked out. Empty cart to restart
	shopping.</p><br />";
	
	 return;
    }	
    $svarname=product_var($pid);
    if(!session_is_registered($svarname))
    {
	session_register($svarname);

	//echo "<p>New product ".$svarname." added to cart.</p><br /><br />";
    }
	$_SESSION[$svarname]=intval($quantity);
    
}

function modify_cart( $pid, $quantity)
{


	//set/update session var
	update_cart($pid,$quantity);
    
	show_cart();
    
}



function show_cart()
{


 ?>
 <style type="text/css">
   table.cart td
    {
       border-color: rgb(355,0,0);
       border-width: 1px 1px 1px 0px;
       border-style: solid;
    }

      table.cart td.left
    {
       border-color: rgb(355,0,0);
       border-width: 0px 1px 0px 0px;
       border-style: solid;
    }
    
</style>

<script type="text/javascript">

function setWarning(message)
{


    
	div=document.getElementById('warning');


	div.innerHTML="<p align='center' style='color:red'>"+ message +"</p>";
/*
*/
	return false;
}

</script>
 <? 
    echo "<table class='cart' style='width:100%;'>";
    echo "<tr><th></th><th>Total Quantity</th><th>Item Number</th><th>Product</th><th>Unit price</th><th>Total</th></tr>";

    // $count=0;
    $products=cart_products();

    
    foreach($products as $pid=>$q)
	{
	   // $count++;
	    
	    $pname=get_product_name($pid);
            $pcost=get_product_cost($pid);
	    $pnum=get_product_number($pid);


	         echo "<form action='cart.php' method='get'>";
	     
	    echo "<tr><td class='left'>";
	    print_button('auto','Update');
	    echo "</td>";
	  echo "<td><input type='text' name='quantity'
	value='".$q."' /></td><td>".$pnum."</td><td>".$pname."</td><td>Rs.".$pcost."</td><td>Rs.".$pcost*$q."</td></tr>\n";

	echo "<input type='hidden' name='pid' value='".$pid."' />";
	echo "</form>";
	}


   echo "</table>";

   echo "<br />";

   session_register("TotalCost");

   print_cost_form();
   	
   echo "<div align='center'><table >";


   
    echo "<tr><td></td><td><span class='button'><button type='submit'>Recalculate</button></span></td><td></td><td></td></tr></form>";

    echo "<tr><td> <a class='button' href='cart.php?reset=1'><span>Empty
    Cart</span></a></td><td ><a class='button'
    href='products.php'><span>Continue Shopping</span></a></td>";


    $js="";
    
    if($_SESSION['checkedout']==1)
	$js="onclick = 'return setWarning(\"You have already checked out\");'";
    else if(count(cart_products())==0)
    	$js="onclick = 'return setWarning(\"Cart is empty\");'";

    else if(!isset($_SESSION['shipto']))
	$js="onclick = 'return setWarning(\"You have not chosen a shipping destination.\");'";
    /*else
	$js="onclick = 'return validate();'";
    */
	echo "<td colspan='2' align='center'>";
	echo "<form method='get' 
action='co.php'><span class='button'><button type ='submit'  ".$js." >Checkout</button></span>&nbsp &nbsp";
	echo "<img src='img/pgimage.jpg' width='30' height='30' />&nbsp 
&nbsp  <input type='checkbox' name='ptype' 
align='right' value='o' disabled >&nbsp 
Payment by Credit Card coming soon!</input></form></td>";

	echo "</tr>";		    
    
    echo "</table></div>";

    echo "<div id='warning'><p style='color:black'>.</p></div>";


    echo "<div id='instructions' align='center'><p style='color:white;font-style:italic;'>Any changes above should be verified by pressing 'Recalculate' before clicking on 'Checkout'.</p></div>";
      
}

function print_cost_form()
{
	$prods=cart_products();

	$total_q=0;
	
	$subtotal=0;
	foreach($prods as $pid=>$q)
	{
		$subtotal+=$q*get_product_cost($pid);

		$total_q+=$q;
	}

	$tax=intval($subtotal*.125);
	

	if (isset($_GET['shipto']))
	    {
		$_SESSION['shipto']=$_GET['shipto'];
	    }

	if(isset($_SESSION['shipto'])){
	    $shippingcost= $total_q*get_shipping_cost($_SESSION['shipto']);
	}
	else
	    $shippingcost="0. No zone chosen.";

	$total=$subtotal+$shippingcost+$tax;

	$_SESSION["TotalCost"]=$total;
?>

<form action ="cart.php" method="get" name='shipform'>
<table width='100%'>
<tr>
<td width='65%'>Ship to(zone):  &nbsp  &nbsp  &nbsp  &nbsp <?
print_location_select('shipto', $_SESSION['shipto']) ;?> </td>
<td>
<table>
<tr><td>Subtotal:</td><td> Rs. &nbsp <? echo $subtotal; ?></td></tr>
<tr><td>Shipping:</td><td> Rs. &nbsp <? echo $shippingcost; ?></td></tr>
<tr><td>Tax:</td><td> Rs. &nbsp <? echo $tax; ?></td></tr>
<tr><td>Total:</td><td> Rs. &nbsp <? echo $total; ?></td></tr>
</table>
</table>
<?
//submit button outside
}

function cart_page()
{
	
	include_once('utils.php');	

	echo '<div align="center"><p
	class="mainheading">PHITESLA SHOPPING
	CART</p></div><br /><br />';
	
	if (isset($_GET['pid']))
        {
	    modify_cart($_GET['pid'],$_GET['quantity']);
	}
	else
	{
	    if(isset($_GET['reset']))
		session_unset();
	    else if(isset($_GET['recalc']))
	    {
		
	    }
	    show_cart();
	}  
}

display_content2('cart_page',10,'auto',0);







?>
