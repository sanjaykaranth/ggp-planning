<?


error_reporting(E_ALL);
ini_set("display_errors", 1);

if(isset($_GET['ptype']))
header('Location: checkoutpg.php?stage=0');
else header('Location: checkout.php?stage=0');

?>