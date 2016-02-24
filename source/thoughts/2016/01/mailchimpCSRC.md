---
title: What I Learned Making A Mailchimp Template
description: A write up of what I learned creating Mailchimp newsletter template.
date: 2016-01-17
tags:
published: false
---

_Note: TOC = Table Of Contents_

Commenting out this section for now because the CSS selector gets stripped
out of the email, either by Mailchimp or by Gmail :(

I noticed the following warning in the [documentation for adding a
TOC](http://kb.mailchimp.com/campaigns/design/add-a-table-of-contents-to-a-campaign):

`
Note

The *|MC:TOC|* tag inherits the link styling set for the section it
appears in and can't be styled independently. For example, if the merge tag is
placed in the header section, the table of contents will automatically be given
the link styling set for that section.

Set up anchor links instead to customize the appearance of your table of contents.
`

Both because Mailchimp admits that [anchor links may
break](http://kb.mailchimp.com/campaigns/design/add-a-table-of-contents-to-a-campaign#Troubleshooting)
and because I'm always up for trying to hack my way around being told I can't
do something, I looked at the markup of a test email's TOC list items and used [an attribute substring
selector]( https://www.w3.org/TR/selectors/#attribute-substrings ), specifcially:

`
/*
@tab Page
@section TOC Link Style
@ Set the style for the generated links in to TOC. Note: This *may* break, check the code in a preview email to see if the CSS selection is still working.
@theme TOC-link-style
*/
    a[href*=_mctoc]{
        /*@editable*/color:#ff0000;
        /*@editable*/text-decoration:none;
    }
`

_Note: This only works in the "view in browser" or Archive versions. In an email client, you'll still get the default user agent link text styles, at least in my tests._


