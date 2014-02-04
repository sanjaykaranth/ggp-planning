<?

include_once('displayutils.php');


function insert_user()
{

	$userid=max_field("User","ID")+1;

    	    $query="INSERT INTO
    	    User(ID,FirstName,MiddleName,LastName,Email,ShippingAddress,City,State,ZipCode,Country,PhoneNumber)
    	    VALUES (".$userid.",'".
	    $_GET['firstname']."','".
	    $_GET['middlename']."','".
	    $_GET['lastname']."','".
    	    $_GET['email']."','".
	    $_GET['address']."','".
	    $_GET['city']."','".
    	    $_GET['state']."','".
    	    $_GET['zipcode']."','".
    	    $_GET['country']."','".
       	    $_GET['phonenumber']."');";

	    //echo $query;
	    $res=execute_query($query);

	    echo "<!--error:".mysql_error()."-->";

	    if($res && mysql_affected_rows()==1)
	    	    return $userid;
	    else return 0;

}
function checkout_cart($status)
{

	if(intval($status)==0)
	{
		//address form
		?>
		<p class="subheading" style="font-weight:normal">Billing
		Address</p> <br />

		<script type="text/javascript">

			
		function validate()
		    {
			if(
			    !validate_email(document.getElementsByName('email')[0].value)
			    
			    ||
				
				document.getElementsByName('firstname')[0].value.length
				==0		
				
				||
				
			    !validate_number(document.getElementsByName('zipcode')[0].value,'Zip Code')
			    
			    
				||

			    document.getElementsByName('city')[0].value.length == 0

			    ||

			    document.getElementsByName('state')[0].value.length == 0

			    ||

			    !validate_number(document.getElementsByName('phonenumber')[0].value,'Phone number')

			    )
			{
			    
			    document.getElementById('warning').innerHTML="<p align='center' style='color:red'> The form is incomplete. Please fill up fields marked *.</p>";
			    
			    return false;
			    
			}

			return true;
			    
		}

		</script>
			
		<form method="get" action="checkout.php" onsubmit="return validate();">
		<input type="hidden" name="stage" value="1" />

		<table align='center'><tr><td>*Email Address: </td><td><input type="text"
		name="email" style="width:300px" /> </td></tr>

		<tr><td>*First Name</td><td><input type="text"
		name="firstname" style="width:300px" /> </td></tr>

		<tr><td>Middle Name: </td><td><input type="text"
		name="middlename" style="width:300px" /> </td></tr>

		<tr><td>*Last Name: </td><td><input type="text"
		name="lastname" style="width:300px" /> </td></tr>

		
		<tr><td>*Shipping address: </td><td><textarea name="address" style="width:300px" value="">
		</textarea> <br /></td></tr>

		<tr><td>*City:</td><td><input type="text"
		name="city" style="width:300px" /> </td></tr>

		<tr><td>*State/Province </td><td><input type="text"
		name="state" style="width:300px" /> </td></tr>
		
		<tr><td>*Zip Code: </td><td><input type="text"
		name="zipcode" style="width:300px" /> </td></tr>

		<tr><td>Country: </td><td><input type="text"
		name="country" style="width:300px" /> </td></tr>

		<tr><td>*Phone Number: </td><td><input type="text"
		name="phonenumber" style="width:300px" /> </td></tr>

		<tr><td colspan='2'><br />Fields marked * are compulsory.</td></tr>
		<tr><td colspan='2'><br /><br /><p class="subheading" style="font-weight:normal">Payment</p><br /></td></tr>

		<tr><td colspan='2'><p>You can consider the following payment modes:</p><br /></td></tr>

		<tr><td colspan='2'><p>1. Demand Draft or Cheque in favour of 'Phitesla Advanced
		Technologies Pvt. Ltd' payable at Bangalore</p><br /></td></tr>

		<tr><td colspan='2'><p>2. Bank transfer or Direct Deposit at
		any branches of HSBC Bank across India. You can transfer or deposit the
		amount in favour of "Phitesla Advanced Technologies Pvt. Ltd"
		at your nearest HSBC Bank branch in our
		account.</p><br /></td></tr>

		<tr><td colspan='2'><p>HSBC Bank A/C number: 072-650278-001</p><br /></td></tr>
		<tr><td colspan='2'> <div id='warning'></div></td></tr>	
		<tr><td></td><td align='center'><? print_button('150px',"Submit"); ?>   </td></tr>

		</table>
		</form>
									    
		<?
		
	}

	else if(intval($status)==1)
	{

	if(!(isset($_SESSION['checkedout']) &&$_SESSION['checkedout']==1))
	{
		$userno=insert_user();
	    $orderdetails=insert_current_transaction($_GET['address'],$userno);
	    
	    admin_mail();

	    send_user_mail($orderdetails,$_GET['email'],$_GET['address'],$_SESSION['TotalCost']);

	    echo "<p>Thank you for using our website and ordering a PhiTesla
	    product. You order has been placed with the following details:
	    </p>\n<br /><br />";
	     

	     echo '<span  style="font-size:115%;">';
	     
	     echo "<p><b>Your order information</b></p>\n";



	    echo "<br />";

	    if(count($orderdetails)>0)
	    {
		echo "<table  width='500'
	    cellpadding='30'><tr><th>Order Number</th><th>Product Name</th><th>Quantity</th><th>Price</th></tr>";



		foreach($orderdetails as $detail)
		 {
		     echo "<tr><td>".$detail['ordernumber']."</td><td>".$detail['productname']."</td><td>".$detail['quantity']."</td><td>Rs.".$detail['price']."</td></tr>";
		    
		 }
		
		echo "</table>";

		echo "<br /><br /><p> Total(including taxes and shipping charges) : Rs.".$_SESSION['TotalCost']."</p>";
				
		echo "</span>";
		
		echo "<br />";
		
	        
			
	    $_SESSION['checkedout']=1;
	    }
	
	} //session set

	
	    echo "<p>A confirmation email has been sent to your email account(".$_GET['email'].") with the details of this transaction along with payment and
	    shipping details. <span style='color:rgb(255,0,0);'> Kindly note: For your order to be processed,
	    PhiTesla should receive your payment within 7 days of placing this order
	    else your order will stand void.</span></p><br /><br /><br />";

	} //status=1


}

function checkout_page()
{		

	include_once('utils.php');
	

        
	
        
	echo "<div class='automargins' style='width:70%'>";
	echo '<p class="mainheading" style="text-align:center">BILLING INFORMATION</p><br />';


	if(isset($_GET['stage']))
	{

        	checkout_cart($_GET['stage']);

	}
	echo "</div>";
}
	display_content2('checkout_page',10,'auto',0);

	
	
?>
