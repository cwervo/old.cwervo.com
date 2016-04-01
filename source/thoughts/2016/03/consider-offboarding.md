---
title: Consider Offboarding: Letting Users Leave In Peace, or, What Facebook Got Wrong
description: The beginning of a discussion about offboarding and what that looks like when Facebook gets it very, very, wrong in a personal way.
date: 2016-03-31
tags: ux
---

Let's start with a story: a tragic experience made a little _worse_ by careless design.

# The Story

I go to a small liberal arts school in Oberlin, Ohio. [A
student](http://www.samdevorah.org/) here recently passed away and her passing
affected a lot of students, in various ways. I know at least one student, a
friend, who tried to deactivate their Facebook account simply to avoid the
flood of memorial posts, as it was already a tough experience to lose a friend,
community leader, and activist - being reminded of the tragedy virtually all
the time was too much, and they needed a break. This is fine, this is a natural effect of public grieving in a digital
platform, and if this situation arises a user should be allowed space to leave the
platform for a time, mourn in their own way if that's what they need. The trouble is, when this person tried to deactivate their
Facebook they were presented with an analog of the following screen (screenshot
taken from my trial attempt to deactivate my account):

<figure>
<img src="/images/fb-ux/deactivation-attempt.png" alt="A screenshot of the top of Facebook's ">
<figcaption>

A screenshot of the top of the form a user is presented with when one attempts
to deactivate their Facebook.

</figcaption>
</figure>

Let's just look at the top part of the screen you're presented with:

1. First, right at the top, you have a header that explicitly works against the
   user's intentions. Make no mistake, this is manipulative design. This copy
   isn't here to help a confused user, because it takes work to figure out how
   to deactivate your account. The exact steps to get to this page are:
- Go to your Account Settings, nested away in the navigation bar (or at the bottom of the "More" section in the mobile apps).
- Select the "Security" category, which I think most information architects would agree, isn't the most sensible place for this to be.
- Finally, there's a setting at the bottom of the security options that presents you with "Deactivate your account". Press "Edit", which I find a confusing way of phrasing it, and you're finally presented with the screen above.
  So, yeah, I'm not buying that there's any reason this header exists other than to completely conflict a user's explicit, very serious intentions.

2. Second, Facebook musters the entire weight of my social network: "Your 1,119
   friends will no longer be able to keep in touch with you." This is pulling
   at a user's heartstrings, and could be devastating for a user who's trying
   to take a break from the service because of a very real, debilitating
   addiction. Specific to this situation: if someone is leaving because of a
   death, a line like this has the power to remind a user that their social
   network has recently been cut down by one. These aren't just numbers that
   represent connections to be marketed, they're real, actual people, and it's
   uncomfortable at best, tragic at worst, for a company to use friends as
   emotional fodder.
3. Finally, Facebook takes the friends-as-manipulation thing a step further:
   displaying 5 friends' profile photos, 5 photos, 168 pixels wide (I checked),
   in a last ditch effort to guilt you into staying on the platform. To top it
   off, above each photo is written: "\<friend's name\> will miss you." This
   isn't just manipulative anymore, it's actually putting words into users'
   mouths, because there's no way to know if these 5 (random) users will
   actually miss the user in question, the person just trying to get some rest
   from a platform that can overburden, over-notify, and overshare. On top
   manipulating an experience, Facebook actively undermines the trust users put
   in it to allow users to represent themselves.

# This Is A Usability Issue

In user experience design we talk a lot about onboarding, but I don't think we
take the concept of offboarding experiences very seriously, especially not for
social systems like Facebook. I say this because if more consideration had been
given, I think more care would be apparent in the desing of this offboarding
experience. Addiction, grievance, burn out, exhaustion and disgust are all
emotions/states users feel in relation to social media, they need to be allowed
to express and decompress these emotions with or without digital products, in a
way that isn't condescending, and most definitely in a way that isn't actively
manipulative of their trust and emotions.

There's a lot to be learned and a relationship to be maintained from Facebook's
side as well. Understanding why users need a break and learning how to
facilitate that could improve user retention rather than frustrating users, and
potentially ending up losing a user who feels manipulated, when all they wanted
to do was take a break. We need to have conversations around managing an off
boarding user's data, temporary offboarding protocols, and making sure this
experience is as non-combative as possible.

# Doing Better

In my friend's particular case this manipulative design wasn't just offsetting,
it actively frustrated the process of trying to grieve peacefully. There are
certainly lessons to be learned about user experience, user burn out, and a
bunch of other important data and meta data that could be generated and processed
if we paid more attention to offboarding as a part of the user lifetime. I plan on writing more about this
issue, but this particular piece is more to highlight a list of concerns:

- We can do better. Design for real people, not for users who exist in a vacuum and need to be roped in, notified, and convinced to stay, even if they're unhappy with the experience.
- We need a way to report these errors. We talk a lot about user studies, usability audits, etc. —  we have frameworks, thought experiments, and research methods built around understanding users, but there's a problem in relying almost exclusively on gathered usability information: you can miss out on real users' problems. It should be as easy to report a bad usability experience like this as it is to file a bug report or complain about a damaged package.

# In Summary

I picked on Facebook here because I've had a friend experience a horrendous
usability issue, but looking forward I think there's value in
developing the concept of offboarding users, whether that be for temporary
trauma/stress/burn out or because they really do need to just leave. Obviously
there's no way to understand and quantify the users who simply never log in
again, but for those users who are willing to go through an offboarding
process, we shouldn't manipulate their emotions, but I want to set
the bar higher: let's make leaving a product experience as humane as signing up.
