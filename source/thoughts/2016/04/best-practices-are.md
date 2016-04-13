---
title: Design Best Practices Are Holding You Back
description: An exploration of what diversity, accesibilty, and adaptibility mean against the concept of best practices.
date: 2016-04-13
tags: UX, empathetic design
---

Okay, cool, now that I have your attention with the clickbait-y title, let's
unpack what I actually mean: best practices, as in "design patterns we use
because they work well for a target segment of users", produce solid, but
narrowly accessible designs when it comes to creating robust, usable designs.

#The Mindset Problem Of Best Practices

It's not that best practices are harmful in and of themselves; let's be careful
not to throw the baby out with the bathwater! If you're strapped for time,
can't push for user studies in your project, don't know something about your
target demographic but need a mock up, like, _yesterday_, or can't incorporate
any of the strategies I'm going to talk about later, by all means please use
best practices: they'll save you and your users headaches. No, what I worry
about is that best practices reinforce the idea that there is always a correct
interface solution. Okay, perhaps sometimes there's a clear **wrong** answer:
what color do we make this text? Well, certainly don't make it the same color
as the background it's on if it doesn't have a contrasting outline stroke. How
big do we make this button? You definitely won't want to make it so small as to
be unreadable at average viewing distance for a given platform. So we can throw
some especially egregious practices out with confidence, but best practices
extend this thinking to coming up with solutions, and in that process uphold a
troubling myth: they encourage conceptualizing some practices as a universal
design pattern, when in reality design patterns and best practices, all of
them—because this industry and its users have  predominately been white, well
off, cis, able-bodied men—are designs optimized to the whims of a very specific
idea of a common user, which hinders consideration of multiple user
perspectives from the get-go. Note the language: I said "common" user, and
common, for your current, narrow user base, is not the same thing as
"universal", not by a long shot.

Many design choices, if you would like them to be accessible, should be broken
based on the user: your minimalist button may be tantalizingly "on brand" and
less intrusive and more intuitive to a child with good vision, but for an older
user, especially those still grasping for skeuomorphism, particularly spatial
metaphors, you should at least consider adding in more contrast and shading, at
least making that an option. Suppose you're building a social media feed (oh
goody, _another_ social media product!): when a user includes an image in their
post, you include the image before the text, and group some other users'
commentary below the picture in the order of the feed. That's great for someone
who wants to get at this type of media easily, but what about the person who's
trying to avoid violent or NSFW images, or someone who only uses a screen
reader, or someone who honestly just wants to see text posts right now—they can
catch up on their friends' pretty pictures some other time. In all these cases,
as hard as they may be to predict, the experience would change dramatically,
for the better, if the system could adapt to provide these conveniences. And
that's really what accessible, usable design is: a level of convenience as
perceived by a user. That comes from a number of factors of course: intuition,
ability to interpret information on the fly, prior exposure, and familiarity
with common design patterns and practices in general, to name a few factors.
The world is not simply inaccessible to some because some people are, across a
diverse number of factors, defective/divergent/weird: it has to do with who we
consider normal, and the face that the world has, by design, systematically
proved to be more _**convenient**_ for some (white, heterosexual, male) people.
In the same way another person's trash is another person's treasure, one
person's best practice is someone else's usability nightmare.

<!--- *** break *** --->

#Okay, So What Make Accessible Design?

In a word: adaptivity. Before I get into it, though, this advice comes with two
very important caveats. (1) You don't need to make everything adaptive, and (2)
sometimes you don't need this fidelity of accessibility.

(1) Let's take a complicated menu labyrinth, think Adobe Photoshop, as an
example case. If you have dozens, or even hundreds of setting and pull down
menus, it seems pretty monumental to ask that the IA (information architecture)
be rearranged and visualized into a fully scalable, explorable, somehow
intuitive interface (although, if that would meet all your users' need, go for
it!) Instead, user studies should enter the product design cycle here: you need
to identify the top subset of features people use most frequently, and note how
those interface well, or don't, with people across various axes of difference.
When you have this information, design these interfaces to be adaptive—in
addition, let users customize the rest of those dozens or hundred member menus,
they'll have the confidence and/or patience to do so once you give them a top
layer of completely adaptive tools to work with, because most of the time
that's all they'll need.

(2) Say you're making a GUI for yourself and your 3 teammates to access your
proprietary data set a little more intuitively for the duration of your current
project; you probably don't need it to be any more accessible than is necessary
for those on that specific team to interact with it, because it's a finite
interface for a very specific set of people with a predictable set of needs,
abilities, and affordance expectations.

But, for those applications that may truly affect people's lives every day, or
which people will interact with on the order of millions of users, we need a
model for understanding and interpreting users' needs intelligently if we ever
hope of covering more than just the common accessibility and usability spectrum
of best practices. What options do we have here?

##Adaptivity Via User Preferences

While a less robust option than my research interests (which I'll outline
below), user preferences can be a great opening option into the using radical
user choice as a model for accessibility. The concept of user preferences sort
of hit a wall in the early days of computing, not gaining much other than
tooltips and some iconography; I haven't seen anything to indicate they've
changed much since. Examples are nice, so let's take the iPhone, for instance.
It's a UX marvel: usable from age 2 to 200, but the reason for that is a series
of intentionally design, and researched, incredible "best practices", such that
the phone is usable right out of the box. I'd venture to say most people don't
even venture into most of the settings. The reason is probably two fold: as
complex a machine as the iPhone is, its presets are _almost good enough_ for
_many_ people. And those qualifiers are important: there are many for who
certain settings trigger accessibility issues, or for whom everyday tasks are
needlessly drawn out. In these cases, when our goal as users is to achieve
something in a way that makes sense to our mental model, the rote and manual
way is with user preferences. Unfortunately, the settings are an IA mess: some
apps get their own social and privacy settings, some don't, some do get special
certificate information, some may not, some apps may have their own social
options, some social options may be disabled centrally from the settings, and
some of that may be controlled by each proprietary social app in turn. If you
want develop a new vibration to increase your awareness of haptic feedback,
turn off all your animations, or set up parental controls, you'll have to spend
some time getting to know the artificial laundry list that is the iPhone
settings interface. There are many unanswered design questions here ripe for
study and overhaul: how do we organize setting hierarchies, is there a better
format than the list or, its cousin, the dropdown menu, for accessing
preferences? I don't pretend to know the answers, but I do hope if you're
interested in this area, you'll be able to share the answers with the rest of
us!

##Adaptivity Via Intelligent Systems

Adaptive User Interfaces (AUI's) are the mainstay of the research I want to do.
Effectively, I want to build systems that can predict the need for, and
intelligently create, conveniences (like accessibility features, but even
broader, meaning more useful) to adapt a user interface to a particular user
over time. The research area here is actually still really open: there are no
"best practices", we just have to write them and even then there's no single
right way to design for all. Whether it's creating personas for people along
axes of difference, testing small interfaces for variable dependency on them,
or exploring how how we communicate changes and how to make that a more
memorable, usable, interesting experience.

In the coming year I'll be preparing, reading about, and experimenting with AUI
design, specifically in the domain of educational technology, and effectively
this is a write up of why I think unaided design, if our goal is full
accessibility, isn't up to the task in quite the same way. If you have thoughts, resources, tips, or
just want to say hi, feel free to [contact me](mailto:andrescuervor@gmail.com).
