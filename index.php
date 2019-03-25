	
<html>
<head>
 <link rel="stylesheet" type="text/css" href="style.css">

</head>
<script>

function ValidateEmail(email) 
{

	
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.email.value))
  {
    return (true)
  }
    alert("You have entered an invalid email address!")
    return (false)
}

</script>
<body>


<h2>Enquiry Form</h2>

<div class="container">
  <form name="form1" action="sendemail.php" method="post" onsubmit="return ValidateEmail(document.form1.email)">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" placeholder="Your name.." required>

    <label for="subject">Subject</label>
    <input type="text" id="subject" name="subject" placeholder="Your subject for enquiry.." required>
	
    <label for="email">Email id</label>
    <input type="text" id="email" name="email" placeholder="Your email id.." required>
	
    <label for="contact">Contact No</label>
    <input type="text" id="contact" name="contact" placeholder="Your mobile no.." required>
   
    <label for="description">Description</label>
    <textarea id="desc" name="desc" placeholder="Write something.." style="height:200px" required></textarea>

    <input type="submit" value="Submit" name="submit">
  </form>
</div>

</body>
</html>

