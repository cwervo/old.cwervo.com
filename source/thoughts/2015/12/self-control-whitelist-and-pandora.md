---
title: Self Control.app & Pandora
description: Adventures in whitelist blocking!
date: 2015-12-08
tags:
published: false
---

After copying and pasting the console errors into a [raw dump file](./self-control/raw-dump.html) I used
this vim command

     :%s/\v^.*https?:\/\/(.*\.(com|net|org|io|us)).*net::ERR.*$/\1/

Resulting in a [cleaned up v1](./self-control/clean1.html) file, on which I ran this command in vim to
get rid of those stray js errors.

    :g/.*\.js.*/d

That resulted in a nice [50 line file](./self-control/clean2.html) of just URIs and while I could have

And applying one final command, to get rid of anything not directly related to
pandora.com:

    :g!/pandora/d

I threw that [cleaned file](./self-control/clean3.html) into Self Control, and it worked like a charm!

