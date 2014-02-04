<?


include_once('db.php');



include_once('constants.php');



include_once('./order/generatecode.php');


$th=50;





function show_product($product_id)

{

  $details=get_product_details($product_id);

	

  echo "<p>Showing product ".$details['ProductName']."</p>";



  echo "<br /><br />";



  echo "<p>".$details['Specifications']."</p>";



  echo "<br /><br />";



  

   $curr=product_quantity($product_id);



   if($curr==-1) $curr=1;



  echo "<a href='cart.php?pid=".$product_id."&quantity=".$curr."'><img src='img/cart.png'></a><br />";

  

}



function cart_link($product_id)

{



   $curr=product_quantity($product_id);



   if($curr==-1) $curr=1;



    echo "<a href='cart.php?pid=".$product_id."&quantity=".$curr."'><img

    height='20' src='img/cart.png'></a>";

}




function product_var($pid)

{

    return 'product'.$pid;

}



function product_var_id($var)

{



    if(substr($var,0,7)=='product')

	return substr($var,7);

    else return -1;

}



function cart_products()

{

    $products=array();

    foreach($_SESSION as $var => $val)

	{

	    $id=product_var_id($var);

	    

	    if($id>=0)

	    {

		$products[$id]=$val;

	    }

	}

    return $products;

}



function product_quantity($pid)

{

    $var=product_var($pid);



    if(session_is_registered($var)) return $_SESSION[$var];

    else return -1;

}



function admin_mail()

{

    $ps=flagged_products();



    if(count($ps)>0)

	mail("sanjayksk@gmail.com", "Admin notice","Check admin panel for

	pending product orders!");

}



function supplier_orders()

{

    $res=execute_query("SELECT SuppNO, ProductNO,ProductName,Quantity FROM PRODUCT,TRANS WHERE ProductNO=ProductID");





    $supp=array();

    

    echo mysql_error();

    while($row=mysql_fetch_assoc($res))

    {

	if(!isset($supp[$row['SuppNO']][$row['ProductNO']]))

	    $supp[$row['SuppNO']][$row['ProductNO']]=$row['Quantity'];

	else

	    $supp[$row['SuppNO']][$row['ProductNO']]+=$row['Quantity'];

    }



    return $supp;

}

function max_field($table,$field)

{





    $res=execute_query("SELECT MAX(".$field.") FROM ".$table.";");



    if(!$res || mysql_num_rows($res)==0) return 0;

    

    $row=mysql_fetch_row($res);



    //echo "MAX:<br /><br />".$row[0]."<br />";

    

    return intval($row[0]);

	

}

function max_trans()

{



return max_field("TRANS","TransID");

/*

    $res=execute_query("SELECT MAX(TransID) FROM TRANS;");



    if(!$res || mysql_num_rows($res)==0) return 0;

    

    $row=mysql_fetch_row($res);



    //echo "MAX:<br /><br />".$row[0]."<br />";

    

    return intval($row[0]);

*/   

}






function insert_current_transaction($address,$user_no,$pg="no")

{





    $max=max_trans();



    $orders=cart_products();



    $orderdetails=array();



    $i=0;

    

    

    if($pg=="no")
    {
    	$ptype="Offline"; 
	}
    	else 
	{
		$ptype="Online";    

    }
    foreach($orders as $pid => $quantity)

	

	{

	    $max=$max+1;





	    $ordernumber=get_order_number($max);



    	    $query="INSERT INTO TRANS(TransID,OrderNO,UserNO,ProductNO,Quantity,PaymentType,DT,ShipAdr,Status)   VALUES (";



	    $query.=$max.",'".$ordernumber."',$user_no,".$pid.",".$quantity.",'".$ptype."' , '".date("Y-m-d

	    H:m:s")."' , '".$address."',0);";



	    //echo $query."<br /><br />";

	    $res=execute_query($query);



	    echo mysql_error();



	    if($res && mysql_affected_rows()==1)

	    {

	       

    

	       $orderdetails[$i]['ordernumber']=$ordernumber;

	       $orderdetails[$i]['productname']=get_product_name($pid);

	       $orderdetails[$i]['quantity']=$quantity;

	       $orderdetails[$i]['price']=$quantity*get_product_cost($pid);

	       

	       $i++;

	    

	    }

	}





    return $orderdetails;

    
}


function send_user_mail($orderdetails,$email,$address,$total,$pg = "no")

{

	

    $orderid=$orderdetails[0]['ordernumber'];

    

    $message=<<<MESS

    Dear Customer,



    Thank you for ordering a PhiTesla product. Your order has been placed with

    the following details:



MESS;



    $detailstr="";



    foreach($orderdetails as $detail)

    {

	$chunk=<<<CH



	Order Number: {$detail['ordernumber']}

        Product Name: {$detail['productname']}

        Quantity    : {$detail['quantity']}

	Price       : Rs.{$detail['price']}		



CH;

	

	$detailstr.=$chunk;

    }



    $message.=$detailstr;




    $message2=<<<MESS



    

    Total(after including taxes and shipping charges): Rs.$total 

    

    For PhiTesla to start processing your order you will have to make a

    payment for the total payable amount mentioned above in this email. You

    can consider the following payment options for your payment:



    1.Demand Draft or Cheque in favor of 'PhiTesla Advanced Technologies

    Pvt. Ltd.' payable at Bangalore



    2.Bank transfer or Direct Deposit at any branches of HSBC Bank across

    India. You can transfer or deposit the amount in favour of "Phitesla

    Advanced Technologies Pvt. Ltd" at your nearest HSBC Bank branch in our

    account.



    HSBC Bank A/C number: 072-650278-001

    

    Kindly mail us your Demand Draft / Cheque to the following address:



    PhiTesla Advanced Technologies Pvt. Ltd.

    42, MHCS, 16th Main, 5th B Cross

    IAS Officers Colony, BTM Layout

    Bangalore 560076

    INDIA

    Ph: 09940363551





    Kindly note: For your order to be processed, PhiTesla should receive your

    payment within 7 days of placing this order else your order will stand

    void.


MESS;




	if($pg=="no") $message.=$message2;
	
    $message.="\nDisclaimer: This email is for the use of the intended recipient(s) only and may be confidential being subject to copyright, intellectual property protection or attorney-client privilege. If you have received this email in error, please notify the sender immediately and then delete it. If you are not the intended recipient, you must not keep, use, disclose, copy or distribute this email without the author's prior permission. We have taken precautions to minimize the risk of transmitting software viruses, but we advise you to carry out your own virus checks on any attachment to this message. We cannot accept liability for any loss or damage caused by software viruses. If you are the intended recipient and you do not wish to receive similar electronic messages from us in the future then please respond to the sender to this effect.";

							 

    

    /*

    $headers = "MIME-Version: 1.0" . "\r\n";

    $headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";

    */



    $headers="";

    

    // More headers

    $headers .= 'From: <sales@phitesla.com>' . "\r\n";

    $headers .= 'Bcc: <sanjayksk@gmail.com>,<amitbardar@gmail.com>' . "\r\n";







    

    $salesmail="A user has placed the following orders on phitesla.com: \n".$detailstr;



    mail("sales@phitesla.com","An order has been placed",$message);

    

    return mail($email, "Your phitesla.com order",$message,$headers);	    

}



function send_supplier_email($pid,$content)

{

	$res=execute_query("SELECT EmailID FROM SUPP,ProductSuppliers WHERE

	SUPP.SuppID=ProductSuppliers.SupplierID AND

	ProductSuppliers.ProductID=".$pid." ;");



	echo mysql_error();

	while($row=mysql_fetch_row($res))

	{

	//var_dump($row);

	 mail($row[0], "Supplier Notice from phitesla.com", $content);

	 

	}

}

function get_product_name($pid)

{

    $details=get_product_details($pid);

	

    return $details['ProductName'];





}



function get_product_number($pid)

{

    $details=get_product_details($pid);

	

    return $details['ProductNumber'];





}

function get_product_cost($pid)

{

    $details=get_product_details($pid);

	

    return $details['ProductCost'];

}



function get_shipping_cost($location_id)

{

    $res=execute_query("SELECT cost FROM locations WHERE id=".$location_id.";");



    $row=mysql_fetch_row($res);

    return $row[0];

}



function get_supplier_name($sid)

{

    $row=mysql_fetch_assoc(execute_query("SELECT * FROM SUPP WHERE SuppID=".$sid.";"));



    return $row['SuppName'];

    

}

function get_product_details($pid)

{

	$res=execute_query("SELECT * FROM PRODUCT WHERE ProductID=".$pid.";");



	echo mysql_error();

				   

	return mysql_fetch_assoc($res);

}







function flagged_products()

{

    global $th;



    $res=execute_query("SELECT ProductNO, SUM(Quantity) FROM TRANS WHERE Status=0
 GROUP BY ProductNO");



    $products=array();



    $count=0;

    

    while($row=mysql_fetch_row($res))

    {

	if($row[1]>=$th)

	  {

	      $products[$count]=$row[0];



	      $count++;

	  }

	

    }



    return $products;

    

}





function print_location_select($elementName,$id)

{



	$res=execute_query("SELECT * FROM locations;");



	echo "<select  name='".$elementName."'>";

	

	while($row=mysql_fetch_assoc($res))

	{



	    echo "<option value='".$row['id']."' ".($id==$row['id']? "selected":"")." >".$row['name']."</option> \n";

	    

	}



	echo "</select>";

	

}



function send_email($to, $subject, $from, $content, $type="plain")

{



	if($type=="plain")

	{



	    $headers = 'From: '.$from. "\r\n" .'Reply-To: '.$from. "\r\n" . 'X-Mailer: PHP/' . phpversion();

	    

	    return mail($to,$subject,$content,$headers);

	    

	}



	else return false;

}




?>