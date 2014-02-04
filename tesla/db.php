<?
function connect_to_db()
{
    $con=mysql_connect("69.174.249.99","phitesla","ospdbase");


    if ($con)
	mysql_select_db("phitesla",$con);
    
    return $con;
}

function execute_query($query)
{
    $con=connect_to_db();

    if(!$con) die("Couldnt connect to DB!");


    return mysql_query($query);

}


function set_param($name,$value)
{
  $q="UPDATE params SET value='".$value."' WHERE name='".$name."' ;";

  //echo $q;
  $res=execute_query($q);

  echo mysql_error();

  return get_param($name)==$value;
  
}

function get_param($name)
{
  $res=execute_query("SELECT value FROM params WHERE name='".$name."' ;");

  $row=mysql_fetch_row($res);

  return $row[0];
}
?>
