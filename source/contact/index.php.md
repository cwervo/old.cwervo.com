---
title: Contact
---
# You can reach me in a few places:

<!-- (holy crap black/white is gross, fix itttttttt &#45; throw the blue into the mix -->
<!-- &#45;&#45; use css w/ icon SVGs to make them white? Also lookup srcset image so it loads -->
<!-- better on mobile! :) -->


<!-- FIX THE STYLING ON THESE AND MALE VERTICAL ONCE THEY GET TO SMALL (MAKE BIGGER TOO BY DEFAULT) -->

<ul class="contact-list">
    <li id="email" class="logo svg"><a href="mailto:andrescuervor@gmail.com">E mail</a></li>
    <li id="twitter" class="contact-bubble"><a href="https://twitter.com/acwervo">Twitter</a></li>
    <li id="github" class="contact-bubble"><a href="http://github.com/AndresCuervo/">Github</a></li>
    <li id="linkedin" class="contact-bubble"><a href="https://www.linkedin.com/in/andcuervo">LinkedIn</a></li>
</ul>
<!-- <ul class="contact&#45;list"> -->
<!--     <a href="mailto:andrescuervor@gmail.com"><li id="email" class="logo svg">eeemail</li></a> -->
<!--     <a href="https://twitter.com/acwervo"><li id="twitter" class="contact&#45;bubble">twitter</li></a> -->
<!--     <a href="http://github.com/AndresCuervo/"><li id="github" class="contact&#45;bubble">github</li></a> -->
<!--     <a href="https://www.linkedin.com/in/andcuervo"><li id="linkedin" class="contact&#45;bubble">linkedin</li></a> -->
<!-- </ul> -->

# Or leave me a message right here:

<?php
$action=$_REQUEST['action'];
if ($action=="")    /* display the contact form */
{
?>

<form id="form" action="" method="POST" enctype="multipart/form-data">
    <input type="hidden" name="action" value="submit">
    Your name?<br>
    <input name="name" type="text" value="" size="100" placeholder="Name goes here."/><br>
    Your email?<span class="required">*</span><br>
    <input name="email" type="email" value="" size="100" placeholder="boop@boop.com" required/><br>
    What'd you want to say?<span class="required">*</span><br>
    <textarea name="message" type="text" rows="7" cols="100" placeholder="Oh, well ..." required/></textarea><br>
    <input type="submit" value="Send email"/>
</form>
<?php
}
else                /* send the submitted data */
{
    $name=$_REQUEST['name'];
    $email=$_REQUEST['email'];
    $message=$_REQUEST['message'];

    if (!(filter_var($email, FILTER_VALIDATE_EMAIL)))
    {
        echo ("<b class=\"contact-results\">$email is not a valid email, sorry!</b>");
    }

    elseif ((ctype_space($message)) || $message == "" )
    {
        echo ("<b class=\"contact-results\">Please fill in the message form.</b>");
    }
    else{
        $from="From: $name<$email>\r\nReturn-path: $email";
        $subject="Message from $name";
        mail("andrescuervor@gmail.com", $subject, $message, $from);
        echo("<b class=\"contact-results\">Email sent!</b>");
    }
}
?>
