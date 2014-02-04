<?
/*
$headers = "MIME-Version: 1.0" . "\n";
$headers .= "Content-type:text/html;charset=iso-8859-1" . "\n";

$headers .= 'From: tesla@gmail.com' . "\n";

$headers .= 'Reply-To: tesla@gmail.com' . "\n";

$headers.= 'X-Mailer: PHP/' . phpversion();
echo "asd";
echo "<h1>".mail("sanjayksk@gmail.com", "html","<html><b>adasd</b></html>",$headers)."</h1>";

echo "<br />";

echo $headers;


include('Mail.php');
include('Mail/mime.php');

$message = new Mail_mime();
$text = "here is some text";
$html = "<html><h1>some html</h1></html>";

$message->setTXTBody($text);
$message->setHTMLBody($html);
$body = $message->get();
$extraheaders =
array("From"=>"me@example.com", "Subject"=>"My
			     Subject 7");
$headers = $message->headers($extraheaders);

$mail = Mail::factory("mail");
$mail->send("sanjayksk@gmail.com",
	    $headers, $body);

echo "mail sent!";

*/



 require("class.phpmailer.php");

 $mail = new PHPMailer();

 $mail->IsSMTP();  // telling the class to use SMTP
 $mail->Host     = "mail.phitesla.com"; // SMTP server

 $mail->From     = "from@example.com";
 $mail->AddAddress("sanjayksk@gmail.com");

 $mail->Subject  = "An HTML Message";
 $mail->Body     = "Hello, <b>my friend</b>! \n\n This message uses HTML entities!";

//$mail->IsHTML(true);

 if($mail->Send())
echo "mail sent";
else
{
    echo "mail not sent";
    echo $mail->ErrorInfo;
}

?> 

