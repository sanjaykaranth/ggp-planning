<?

include_once('displayutils.php');

function trackorder_page()
{
	include_once('utils.php');

	print_menu_head("Order Status");
		
if(isset($_GET['ordernumber']))
{
	$on=$_GET['ordernumber'];
	
	$res=execute_query("SELECT * FROM TRANS WHERE OrderNO='".$on."'");

	
	if(!$res || (mysql_num_rows($res) !=1))
	  {
		  echo "<div class='centerstuff'><p style='color:red'> Invalid Order Number:
	  ".$on.". Please check your order number and zip code.</p><br /><br /></div> ";	



	    print_form();


	   }
	else
	{
	    $row=mysql_fetch_assoc($res);
	    
	    echo "<div class='centerstuff'><br /><br /><h3> Your order details are below : </h3>";

	    echo "<table border='0' width='60%'>";

	    echo "<tr><th width='20%'>Order Number</th><th width='20%'> Product </th><th width='20%'>Quantity</th> <th width='20%'>Order Date</th><th width='20%'>Order Status</th></tr>";
	    
	    echo "<tr><td>".$on."</td><td>".get_product_name($row['ProductNO'])."</td><td>".$row['Quantity']."</td><td>".$row['DT']."</td><td>";

	    if($row['Status']==0) echo "Being Processed";
	    elseif($row['Status']==1) echo "Being Manufactured";
	    elseif($row['Status']==2) echo "Shipped";
	    
	    echo "</td></tr></table></div>";
	
	
     }
}

else
{
print_form();
}

}

function print_form()
{
?>
<div class="centerstuff"><br /><br />
<form action = "trackorder.php" method="get">
<p><b>*Order Number</b> &nbsp &nbsp <a
href="content.php?page=order" style="color:#3535b5">What's this?</a> </p>
<input type="text" name="ordernumber" style="width:240px"/> <br /><br />
<p><b>Shipping Address Zip Code</b></p>
<input type="text" name="zipcode" style="width:240px" /> <br /><br />
<span class="button"><button style="width:100px" type="submit" >Find Order</button></span>
</form>
<br /><p><i>*Order Number is required.</i></p>
</div>
<?

}


	display_content2('trackorder_page',6);

	

?>
