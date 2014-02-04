<?



    
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";

    // More headers
    $headers .= 'From: <sales@phitesla.com>' . "\r\n";
    $headers .= 'Cc: <sanjay@iitm.ac.in>' . "\r\n";

    mail("sanjayksk@gmail.com","testy", "<html>blah</html>",$headers);

    ?>
    

