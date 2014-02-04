<?
//copies, beware, replicate changes



function display_content($content, $button,$height='350px',$borderwidth=5)
{

	$toplinks=array('content.php?page=home','products.php','content.php?page=services',
	'content.php?page=aboutus', 'content.php?page=downloads');

	$bottomlinks=array('trackorder.php','content.php?page=testimonials','content.php?page=contactus',
	'content.php?page=careers', 'cart.php');

	$lastlinks=array('content.php?page=terms', 'content.php?page=privacy',
	'content.php?page=shipping', 'content.php?page=warranty');
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="style.css" type="text/css" />
<link rel="stylesheet" href="round-button.css" type="text/css" />
<script type="text/javascript" src="roll.js"></script>
<script type="text/javascript" src="include.js"></script>


</head>

<body>
<? include('statcounter.php'); ?>



<div id="container" align="center">

	<div id="logo"></div>

	<div id="logotext"></div>

	<div style="height:100px;"></div>

	<div id="nav1">
	<?
	for($i=1;$i<=5;$i++)
	{
	 echo '<a class="navlinks1" href="'.$toplinks[$i-1].'"><img src="img/i'.$i;
	 if($i==$button) echo 'x';	 
	 echo '.jpg" onmouseover="this.src=\'img/i'.$i.'x.jpg\'" onmouseout="this.src=\'img/i'.$i.'.jpg\'"></a>';
	}
	?>

		<div id="search"><form action="search.php" method="get"><input
		type="text" name="term" value="" /></form></div>
	</div>

	<div style="height:15px;"></div>



	<? echo '<div id="content" style="height:'.$height.';border-width:'.$borderwidth.'px;">'; ?>


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<?

echo $content;
?>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

	</div>



	<div style="height:15px;"></div>

	<div id="nav2">

        <?
	for($i=6;$i<=10;$i++)
	{
	 echo '<a class="navlinks2" href="'.$bottomlinks[$i-6].'"><img src="img/j'.($i-5);
	 if($i==$button) echo 'x';	 
	 echo '.jpg" onmouseover="this.src=\'img/j'.($i-5).'x.jpg\'" onmouseout="this.src=\'img/j'.($i-5).'.jpg\'"></a>';
	}
	?>

	</div>

	<div style="height:10px;"></div>

	


	<div id="nav3" align="center">
        <?
	for($i=21;$i<=24;$i++)
	{
	 echo '<a class="navlinks3" href="'.$lastlinks[$i-21].'"><img src="img/k'.($i-20);
	 if($i==$button) echo 'x';	 
	 echo '.jpg" onmouseover="this.src=\'img/k'.($i-20).'x.jpg\'" onmouseout="this.src=\'img/k'.($i-20).'.jpg\'"></a>';
	}
	?>

	</div>

	<div style="height:5px;"></div>
	

	<div id="footer" align="center">We accept payment through credit cards <img src="img/pgimage.jpg" width="50" height="50" /> <br /> <br />Copyright © 2009 PhiTesla</div>



</div>

<script type="text/javascript">initRoll();</script>

</body>
</html>
<?
}

function display_content2($function, $button,$height='350px',$borderwidth=5)
{

	$toplinks=array('content.php?page=home','products.php','content.php?page=services',
	'content.php?page=aboutus', 'content.php?page=downloads');

	$bottomlinks=array('trackorder.php','content.php?page=testimonials','content.php?page=contactus',
	'content.php?page=careers', 'cart.php');

	
	$lastlinks=array('content.php?page=terms', 'content.php?page=privacy',
	'content.php?page=shipping', 'content.php?page=warranty');

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="style.css" type="text/css" />
<link rel="stylesheet" href="round-button.css" type="text/css" />
<script type="text/javascript" src="roll.js"></script>
<script type="text/javascript" src="include.js"></script>



</head>

<body>
<? include('statcounter.php'); ?>


<div id="container" align="center">

	<div id="logo"></div>

	<div id="logotext"></div>

	<div style="height:100px;"></div>

	<div id="nav1">
	<?
	for($i=1;$i<=5;$i++)
	{
	 echo '<a class="navlinks1" href="'.$toplinks[$i-1].'"><img src="img/i'.$i;
	 if($i==$button) echo 'x';	 
	 echo '.jpg" onmouseover="this.src=\'img/i'.$i.'x.jpg\'" onmouseout="this.src=\'img/i'.$i.'.jpg\'"></a>';
	}
	?>


		<div id="search"><form action="search.php" method="get"><input
		type="text" name="term" value="" /></form></div>
	</div>


	<div style="height:15px;"></div>



	<? echo '<div id="content" style="height:'.$height.';border-width:'.$borderwidth.'px;">'; ?>


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<?

call_user_func($function);
?>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

	</div>



	<div style="height:15px;"></div>

	<div id="nav2">

        <?
	for($i=6;$i<=10;$i++)
	{
	 echo '<a class="navlinks2" href="'.$bottomlinks[$i-6].'"><img src="img/j'.($i-5);
	 if($i==$button) echo 'x';	 
	 echo '.jpg" onmouseover="this.src=\'img/j'.($i-5).'x.jpg\'" onmouseout="this.src=\'img/j'.($i-5).'.jpg\'"></a>';
	}
	?>

	</div>

	<div style="height:10px;"></div>

	<div id="nav3" align="center">


        <?
	for($i=21;$i<=24;$i++)
	{
	 echo '<a class="navlinks3" href="'.$lastlinks[$i-21].'"><img src="img/k'.($i-20);
	 if($i==$button) echo 'x';	 
	 echo '.jpg" onmouseover="this.src=\'img/k'.($i-20).'x.jpg\'" onmouseout="this.src=\'img/k'.($i-20).'.jpg\'"></a>';
	}
	?>


	</div>

	<div style="height:5px;"></div>
	<div id="footer" align="center">We accept payment through credit cards <img src="img/pgimage.jpg" width="50" height="50" /> <br /> <br />Copyright © 2009 PhiTesla</div>


</div>

<script type="text/javascript">initRoll();</script>

</body>
</html>
<?
}

function print_menu_head($title)
{

	echo "<div id='productmenu'>";

	//echo '<div style="height:10px; background:rgb(26,26,26);"></div>';	

	echo "<div id='pmenuhead'><h3>".$title."</h3></div>";

	//echo '<div style="height:8px;  background:rgb(26,26,26);"></div>';
	
	echo "</div>";
	
}

function print_button($width,$caption)
{
echo '<span class="button"><button style="width:'.$width.'" type="submit" >'.$caption.'</button></span>';
}

?>