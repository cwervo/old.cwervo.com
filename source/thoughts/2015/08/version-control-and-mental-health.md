---
title: Version Control & Mental Health
description: A personal understanding of how version control makes me better.
date: 2015-08-19
tags: mental health, programming, imposter syndrome
---

Last Friday, August 14<sup>th</sup> was my last day interning at
[CodeNow](codenow.org). In two months I rebuilt and redesigned their website
from the ground up. I helped them teach Ruby to 100 students, and, just last
weekend, taught 6 students the basics of working with Swift. I also helped set
up those workshops, and helped reshoot some material for a series of videos on
the basics of programming. In short, I did **a lot**, and every experience
helped me learn and grow. But, behind that, I had to overcome a couple personal
struggles, and as I reflect on leaving CodeNow I want to focus on one small
piece of overcoming those challenges: I want to focus on how I ended up having
a great summer rebuilding and redesigning a website, even though I have had
anxiety towards programming. If you find comfort in hearing other people
overcome their challenges (I know I do), this might help you too.

I have chronic anxiety, and — even as I gain more experience with technology in
and out of the classroom — that's coupled with imposter syndrome. As I have
come to understand it, imposter syndrome is the fear of not being prepared or
allowed to be somewhere (whether that's by title, for instance being in a high
ranking job, or in a physical place, like a university), despite previous
accomplishments and qualifications. It is marked by feeling you're not good
enough — not being smart enough to pass a class, not having enough experience
to complete a job, not having enough tenacity to learn something new — even
though you have clearly succeeded in the past. I'm sure we've all had these
fears on occassion, maybe you even have them periodically (like when year-end
reviews or school finals roll around). The difference with me, with imposter
syndrome, is that depending on the context, I can have these thoughts recur
dozens of times on end and no amount of thinking about my past accomplishments
and successes can quell them.

The particularly troublesome thing is that these two issues feed into each
other: I've spent days or even weeks cyclically worrying about whether, _in my
moment of worrying_, rather than studying or working, if I was already doomed to
failure; worrying about a spiral where I'm predestined to give up, drop out and
need to reconcile a constantly ineffective life. I've become better at dealing
with this for a myriad of personal reasons, but when I'm working with code
(something I do a lot of as a computer science undergrad and part-time web
designer), I credit version control with saving me from some of the mental burden.
Imposter syndrome comes back now and again (it's much harder to fight your
self image), but the anxiety of messing up has been relieved as I've learned
that version control doesn't just offer you a robust, historically accurate
codebase - it allows you to experiment, to just _try_.

As you may already know I have some [political issues with Git and
Github](http://cwervo.com/thoughts/2015/08/a-political-history-of-git.html),
but as the ubiquitous version control system at the moment, these tools are
also the reason I'm able to write this post in the first place. To be clear,
for a time just using Git gave me anxiety too: will I accidentally delete a
file with this pull? How do I go back in history? What the hell is a SHA-1
hash? After getting over the serious interface issues, continuously working
with it made me see why version control is so useful. I may have a lot of
critiques of Git, but cheap (meaning it doesn't add bloat to a project, or take
a long time) branching (the practice of saving your code in multiple states
independently of each other, like multiple backups) is a modern miracle, and it
allows you to play around and **not break things**.  Of course, you can always
delete the branch or the Github repo, or utterly screw up a Git command, but
barring those possibilities (which aren't easy to do both permanently **and**
accidentally in a Git or Github project), there's so much freedom in version
control allowing you to mess around and almost always have a plan B, and C, and
D, and so on.

If branches aren't your thing (no worries, I'm still getting used to using
branches in all my projects too, especially incorporating them into my old
projects), the simple act of committing code (meaning, backing it up using
version control), and being able to revert back to a commit (restore any of
your code backups), is relieving in and of itself.  Rather than trying to write
it all out again here, I'd rather show you the note I left for the intern who
is taking over my project at CodeNow:

>**Last Thing:**  
>This isn't so much technical as it is practical: remember, you can't screw up.
Git and Github have a complete history of the project, and you can always
revert to the last functioning version. If you do break something and you
didn't figure that out while testing it locally ... you can go back in history
to the last working version, commit, deploy from there, and try again. The
website isn't going to explode if you break something, because Git lets you
turn back time.

I realized after writing the above note, that while I hope it's helpful to the
next intern, I really wrote it for myself, to remind myself that in one small
way, I'm allowed to break things until I can do something perfectly, and that's
the best type of learning environment you can ask for.

Programming is hard, having serious anxiety about it and feeling like you're
not good enough to even be writing code makes it _even_ harder. Version control
made it better. Now, if only we can design more intuitive version
control systems, that'd be great.
