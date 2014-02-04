<?

include_once('utils.php');
include_once('displayutils.php');


function search_page()
{
if(isset($_GET['term']))
{

print_menu_head("Search Results");
echo "<div class='centerstuff'>";
	$res=execute_query("SELECT pages.link, pages.name FROM pages,tags
	WHERE pages.id=tags.page_id AND tags.tag='".$_GET['term']."';");


	$i=1;
	while($row=mysql_fetch_assoc($res))
	{
		
		echo "<p>".$i." : <a href='".$row['link']."' >".$row['name']."</a></p>";
		$i++;
	}

	echo "</div>";
}
}


display_content2('search_page',-1);

?>