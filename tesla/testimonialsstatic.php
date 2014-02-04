<?

include_once('utils.php');

function print_form()
{

	?>

	<script type="text/javascript">

	function validate()
	{

	    if(!validate_email(document.getElementsByName('email')[0].value))

	    return false;

	    else return true;
	}

	</script>
		<br />	
		<form action="content.php" method="get" onsubmit="return validate();" >
                <table>
		<tr><td>Name </td>
		<td><input type="text" name="name" style="width:300px"/></td>
		</tr><tr><td>Email* </td>
		<td><input type="text" name="email" style="width:300px"/><br /></td>
		</tr><tr><td valign="top">Comment* </td>
		<td><textarea  name="testimonial" value="" style="width:300px;height:200px"> </textarea></td>
		</tr>
		     
		<input type="hidden" name="page" value="testimonials" />
		     
		<tr><td></td><td align="center"><span class="button"><button
		type="submit">Send</button></span>
		</td></tr>
		</table>
		     
		</form>
	      <br />
	      <p style="color:rgb(255,0,0);">* Mandatory.</p>
	
	<?
}

function handle_form()
{
	if(isset($_GET['testimonial']))
	{
	    $content="A testimonial has been entered by
	    ".$_GET['name'].":\n\n".$_GET['testimonial'];
	    
	    if(send_email("sanjayksk@gmail.com", "Testimonial", $_GET['email']
	   , $content))
		echo "<p> Thank you for your testimonial!</p><br />";
	    else
		echo "<p>Testimonial could not be sent. Please try again. Sorry for the inconvenience.</p><br />";	
		
	}

	print_form();
	
}

?>

<?

print_menu_head("Testimonials");

?>
	
<div class='centerstuff'>

<table width='100%'>
<tr>

<td>

<?
handle_form();
?>

</td>

<td align='right'><img align='right' src="img/static/testimonial.gif" height='200'>
</td></tr>
</table>


</div>
