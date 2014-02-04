<?

include_once('displayutils.php');


function insert_user($fields)
{

	$userid=max_field("User","ID")+1;

    	    $query="INSERT INTO
    	    User(ID,FirstName,Email,ShippingAddress,City,State,ZipCode,Country,PhoneNumber)
    	    VALUES (".$userid.",'".
	    $fields['BillingName']."','".
	    $fields['BillingEmail']."','".
	    $fields['BillingAddress']."','".
	    $fields['BillingCity']."','".
    	    $fields['BillingState']."','".
    	    $fields['BillingPostalCode']."','".
    	    $fields['BillingCountry']."','".
       	    $fields['BillingPhone']."');";

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

			/* my validate, wont use, dont know what ebs expects...
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
		*/
		</script>
			
		
				
			<script language="JavaScript">
			function validate(){
				
				var frm = document.frmTransaction;
				var optFields = Array('description[delivery_address_2]','description[delivery_state]','description[delivery_telephone]','description[delivery_fax]', 'description[billing_address_2]','description[billing_state]', 'description[billing_telephone]','description[billing_fax]');
				var aName = Array();
				aName['account_id'] = 'Account ID';
				aName['reference_no'] = 'Reference No';
				aName['description'] = 'Description';
				aName['name'] = 'First Name';
				aName['name_2'] = 'Last Name';
				aName['address'] = 'Address 1';
				aName['city'] = 'City';
				aName['state'] = 'State';
				aName['postal_code'] = 'Post Code';
				aName['country'] = 'Country';
				aName['email'] = 'Email';
			
				for(var i = 0; i < frm.elements.length-1 ; i++){ //ignore the button
					
				
					if(!optFields.inArray(frm.elements[i].name)){
						if(frm.elements[i].value.length == 0){
							alert("Invalid input for " + aName[frm.elements[i].name]+ frm.elements[i].name);
							frm.elements[i].focus();
							return false;
						}
						
						if(frm.elements[i].name == 'email'){
							if(!validateEmail(frm.elements[i].value)){
								alert("Invalid input for " + aName[frm.elements[i].name]);
								frm.elements[i].focus();
								return false;
							}		
						}
						if(frm.elements[i].name == 'reference_no]'){
							var d = new Date();
							frm.elements[i].value = d.getTime();
						}
					}
				}  
				return true;
			}
			function validateEmail(email) {
			    //Validating the email field
			    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				//"
			    if (! email.match(re)) {
			        return (false);
			    }
			    return(true);
			}
			
			
			Array.prototype.inArray = function (value)
			// Returns true if the passed value is found in the
			// array.  Returns false if it is not.
			{
			    var i;
			    for (i=0; i < this.length; i++) {
			        // Matches identical (===), not just similar (==).
			        if (this[i] === value) {
			            return true;
			        }
			    }
			    return false;
			};
			
			</script>
		<form  method="post" action="https://secure.ebs.in/pg/ma/sale/pay/" name="frmTransaction" id="frmTransaction" onSubmit="return validate()">	 

		<input type="hidden" name="account_id" value = "5596" />
		<input type="hidden" name="description" value = "online order" />
		<input type="hidden" name="reference_no" value = "0" />
         	<input type="hidden" name="country" value = "IND" />
		<input type="hidden" name="mode" value = "TEST" />
                <input type="hidden" name="amount" value = <? echo $_SESSION['TotalCost']; ?> />
		<input type="hidden" name="return_url" value = "http://www.phitesla.com/checkoutpg.php?DR={DR}" />
		
		<table align='center'><tr><td>*Email Address: </td><td><input type="text"
		name="email" style="width:300px" /> </td></tr>

		<tr><td>*First Name</td><td><input type="text"
		name="name" style="width:300px" /> </td></tr>


		<tr><td>*Last Name: </td><td><input type="text"
		name="name_2" style="width:300px" /> </td></tr>

		
		<tr><td>*Shipping address: </td><td><textarea name="address" style="width:300px" value="">
		</textarea> <br /></td></tr>

		<tr><td>*City:</td><td><input type="text"
		name="city" style="width:300px" /> </td></tr>

		<tr><td>*State/Province </td><td><input type="text"
		name="state" style="width:300px" /> </td></tr>
		
		<tr><td>*Zip Code: </td><td><input type="text"
		name="postal_code" style="width:300px" /> </td></tr>

		
		<tr><td>*Phone Number: </td><td><input type="text"
		name="phone" style="width:300px" /> </td></tr>

		<tr><td colspan='2'><br />All fields are compulsory.</td></tr>
		
		<tr><td></td><td align='center'><? print_button('150px',"Submit"); ?>   </td></tr>

		</table>
		</form>
									    
		<?
		
	}

	else if(intval($status)==1)
	{

	if(!(isset($_SESSION['checkedout']) &&$_SESSION['checkedout']==1))
	{


	  //ebs stuff
	   $secret_key = "5aa18ca28350921b6f308190816f3657";	 // Your Secret Key

	    require('Rc43.php');
	    $DR = preg_replace("/\s/","+",$_GET['DR']);

	    $rc4 = new Crypt_RC4($secret_key);
	    $QueryString = base64_decode($DR);
	    $rc4->decrypt($QueryString);
	    $QueryString = split('&',$QueryString);

	    $response = array();
	    foreach($QueryString as $param){
	      $param = split('=',$param);
	      $response[$param[0]] = urldecode($param[1]);
	    }


	  if($response['ResponseCode']!=0)
	    {
	      echo "<p>The transaction was not successful. Please try again.</p>";
	      return;
	    }
	    $userno=insert_user($response);
	    $orderdetails=insert_current_transaction($response['BillingAddress'],$userno,"yes");
	    
	    admin_mail();

	    send_user_mail($orderdetails,$response['BillingEmail'],$response['BillingAddress'],$_SESSION['TotalCost'],"yes");

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

	
	echo "<p>A confirmation email has been sent to your email account(".$response['BillingEmail'].") with the details of this transaction.</p><br /><br />";
	/*along with payment and
	    shipping details. <span style='color:rgb(255,0,0);'> Kindly note: For your order to be processed,
	    PhiTesla should receive your payment within 7 days of placing this order
	    else your order will stand void.</span></p><br /><br /><br />";
	*/
	} //status=1


}

function checkout_page()
{		

	include_once('utils.php');
	

        
	
        
	echo "<div class='automargins' style='width:70%'>";
	echo '<p class="mainheading" style="text-align:center">BILLING INFORMATION</p><br />';


	/*	var_dump($_GET);
		var_dump($_POST);*/
	if(isset($_GET['stage']))
	{

        	checkout_cart($_GET['stage']);

	}
	else if (isset($_GET['DR']))
	{
	  
		  checkout_cart(1);
		

	}
	echo "</div>";
}
	display_content2('checkout_page',10,'auto',0);

	
	
?>
