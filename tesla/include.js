
		function validate_email(email) {
		    
		    if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){
			return true;
		    }
		    alert("Invalid E-mail Address! Please re-enter.")
		    return false;
		}

		function validate_number(number,field) {

		    if (isNaN(parseInt(number)) || (parseInt(number)==0))
		    {
			alert('Please enter a valid numeric value for '+ field);
			return false;
		    }
		    else return true;

		}
	