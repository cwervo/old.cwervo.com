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
# Or leave me a message right here:

<form action="https://formspree.io/andrescuervor@gmail.com" method="POST">
    <div class="form-group">
        <label for="name">Name</label>
        <input class="form-control" id="name" required="required" type="text" name="name">
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input class="form-control" id="email" required="required" type="email" name="_replyto">
        <input type="text" name="_gotcha" style="display:none;" />
        <input type="hidden" name="_subject" value="Hi Andres Cuervo!" />
        <input type="hidden" name="_next" value="contact/done" />
    </div>
    <div class="form-group">
        <label for="message">Message</label>
        <textarea name="message" class="form-control" id="message" rows="4" cols="50">
        </textarea>
    </div>
    <div class="form-group submitbtn">
        <input class="btn btn-lg btn-default" type="submit" value="Submit">
    </div>
</div>
</form>
