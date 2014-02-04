<?
include_once('displayutils.php');

function products_page()
{

 include_once('utils.php');

 show_product_menu();

 echo '<div id="dhtmldiv"></div>';

 show_products();

 }

function show_product_menu()
{

?>
<div id="productmenu">
	<div style="height:2px; background:rgb(26,26,26);"></div>
	<div id="pmenuhead"><h3>PRODUCTS</h3></div>
	<div style="height:2px;  background:rgb(26,26,26);"></div>
	<div id="pmenuitems">
	<div id="pmenutop"></div>
<?
		
	$res=execute_query("SELECT * FROM PRODUCT");

	$i=0;
	
	while($row=mysql_fetch_assoc($res))
	{


	    echo '<h4 class="menuitem" onmouseover="pRoll('.$i.')"
	    onmouseout="pOut()" onclick="pChange();">'.$row['ProductName'].'</h4>';

	    $i++;	  
	}


	?>
	
	<!--<div id="pmenubottom"></div>-->
	<div id="pmenuhide"></div>
   </div>

</div>

<?
}


 function show_products()
{
    
    $res=execute_query("SELECT * FROM PRODUCT");

    while($row=mysql_fetch_assoc($res))
	{

	    echo '<div class="products">';
	    echo '<div style="background:rgb(0,0,0); height:400px;">';
	    
	    echo '<div class="product_intro"><h1>'.$row['ProductName'].'</h1>';

	    include('content/product'.$row['ProductID'].'intro.php');

	    echo '</div>';

	    echo '<div class="product_image">';
            include('content/product'.$row['ProductID'].'image.php');
     	    echo '</div>';
	    
	    echo '<div class="product_specs">';
	    
	   echo "<br />";
	   include('content/product'.$row['ProductID'].'specs.php');
	   
	   //echo "<br />";


	   echo "<span style='color:green;font-weight:bold'>Add to Cart :";
	 cart_link($row['ProductID']);

	 echo "</span>";


	    
	    echo '</div></div></div>';
	}
}

display_content2('products_page',2,'550px');

?>
