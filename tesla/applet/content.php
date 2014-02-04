<?

include_once('displayutils.php');

if(!isset($_GET['page']))
    display_content(home(),1);
else
{
    $page=$_GET['page'];

    if($page=='home')
	display_content2("home",1,'550px');

    else if($page=='contactus')
	display_content2("contactus",8);

    else if($page=='aboutus')
	display_content2("aboutus",4);

    else if($page=='services')
        display_content2("services",3,'420px');

    else if($page=='careers')
	display_content2("careers",9);

    else if($page=='testimonials')
	display_content2("testimonials",7,'auto');
	
    else if($page=='downloads')
	display_content2("downloads",5);

    else if($page=='order')
	display_content2("order",6,'500px');

    else if($page=='warranty')		
	 display_content2("warranty",24,'auto',0);

    else if($page=='privacy')
 	display_content2("privacy",22,'auto',0);

    else if($page=='terms')	
 	display_content2("terms",21,'auto',0);

	
    else if($page=='shipping')	
 	display_content2("shipping",23,'auto',0);
}

function home()
{
	include('homestatic.php');
}
function contactus()
{
include('contactus.php');
}

function aboutus()
{
	include('aboutusstatic.php');
}

function services()
{
	include('servicesstatic.php');
}


function careers()
{

	include('careersstatic.php');
	
	
	
}

function testimonials()
{
	include('testimonialsstatic.php');
}


function downloads()
{
	include('downloadsstatic.php');
	
}

function order()
{
 include('orderstatic.php');
}


function privacy()
{
 include('privacystatic.php');
}


function warranty()
{
 include('warrantystatic.php');
}

function shipping()
{
 include('shippingstatic.php');
}

function terms()
{
 include('termsstatic.php');
}
?>
