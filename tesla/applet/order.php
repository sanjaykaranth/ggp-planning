<?

include_once('../utils.php');




function get_po($pid)
{
	global $th;
	
	$po= get_product_name($pid);

	$res=execute_query("SELECT SupplierID FROM ProductSuppliers WHERE ProductID=".$pid.";");

	$po.="_".date("d/m/Y")."_";
	
	while($row=mysql_fetch_row($res))
	{
		$po.=get_supplier_name($row[0])."01_";
	}

	$po.=$th;

	return $po;
}


if(isset($_GET['approve']))
{
	$pid=$_GET['pid'];
	
	
	$res=execute_query("SELECT * FROM TRANS WHERE ProductNO=".$pid." AND Status=0");

	$pcount=0;

	$ocount=0;
	
	while($row=mysql_fetch_assoc($res))

	{

		$q=$row['Quantity'];
		
		if($pcount+$q<$th)
		{
		$res2=execute_query("UPDATE TRANS SET Status=1 WHERE
		TransID=".$row['TransID']." LIMIT 1 ;");

		echo mysql_error();
		
		$pcount+=$q;

		$ocount++;
		}

		else break;
		
	}
	
	echo mysql_error();
	 echo "<p>PO Number handled successfully. ".$ocount." orders processed, ".$pcount." products ordered. </p>";


	send_supplier_email($pid,"Supplier, process PO Number: ".$_GET['po']);
	
}


$res=execute_query("SELECT ProductNO, SUM(Quantity) FROM TRANS WHERE Status=0
GROUP BY ProductNO");

echo mysql_error();


echo "<table>";
echo "<tr><th>Product </th><th>Total Products (Unprocessed)</th></tr>";

//$orders=array();

while($row=mysql_fetch_row($res))
{
 echo "<tr><td>".get_product_name($row[0])."</td><td>".$row[1]."</td></tr>";

// $orders[$row[0]]=$row[1];
 
}

echo "</table>";



$products=flagged_products();

foreach($products as  $pid)
{

	    $po= get_po($pid);
	    
	    echo "<p> <a href='order.php?approve=1&pid=".$pid."&po=".$po."'>Approve</a> PO number :".$po."</p>";

}

?>
