---
title: Animating The Details Tag
description: Just a few notes on how I animated the details tag for a project.
date: 2015-11-27
tags:
---
<style>
@keyframes fadeInDown {
    0% {
        opacity: 0.5;
        transform: translateY(-1.25em);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

.onlyOpen[open], .bothAnimations[open]{
    animation-name: fadeInDown;
    animation-duration: 0.5s;
}


.onlyClose, .bothAnimations {
    transition: height 1s ease;
}

.onlyClose:not([open]), .bothAnimations:not([open]) {
    height: 0;
}

.onlyClose[open], .bothAnimations[open]{
    height: 3em;
}
</style>

I'm the front end developer and designer for Oberlin's [Environmental
Dashboard](environmentaldashboard.org) and as such I get to tackle interesting
challenges from a technical and a design perspective every week. Today I just
want to take a quick look at how I solved the task of making the `<details>`
element animate to open smoothly rather than jarringly snap open and closed.

The easiest way to achieve this effect, I knew when looking for solutions,
would be to use some CSS animation, because why add the bloat of performant JS
animation when the browser can render it natively? So, with that in mind I took
a page from Dan Eden's wonderful
[Animate.css](http://daneden.github.io/animate.css/) project, specifically the
rule for a fading in and down transition:

~~~
@keyframes fadeInDown {
    0% {
        opacity: 0.5;
        transform: translateY(-1.25em);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}
~~~

I want this to apply to all of the detail elements, so I simply use the
keyframes animation declared above in the global 'Custom CSS' in our Wordpress
settings.

~~~
details[open] {
    animation-name: fadeInDown;
    animation-duration: 0.5s;
}
~~~

With that you get something that looks like:

<details class="onlyOpen">
<summary>This is the summary text.</summary>
This details text animates on open!
</details>

Looking good! But notice when you click the element above to close it
everything underneath sort of just snaps back into place, we can do better than
that, right?

For the animation to close the details element I wanted something that
would force the other elements around it to also transition smoothly. A natural
fit was the height property, which will repaint as it animates, allowing the
other elements around it (namely, below) to adjust without much 'jank'. The
rule for that is simply defining a transition for the details element's height:

~~~
details {
    transition: height 1s ease;
}
~~~

And two more little rules, one that defines the height to be 0 when the details
element is `not([open])` and another that expands its height when the element
is `[open]`:

~~~
details:not([open]) {
    height: 0;
}

details[open] {
    height: 200px;
}
~~~

That animation alone gives you a details element like this:


<details class="onlyClose">
<summary>This is the summary text.</summary>
This details text animates on closing!
</details>

That's nice, but if you try clicking on that element above you'll see the
problem with only having this animation: it closes really nicely, but doesn't
do so well opening the text, in particular the text shows up too fast. There
are a number of ways to solve this problem, but I decided the most elegant solution for this case was to combine the two animations!


<details class="bothAnimations">
<summary>This is the summary text.</summary>
This details text animates on both opening and closing!
</details>


And here's a GIF of it at work on the Oberlin Environmental Dashboard website:

<img
src="../../../images/details%20animation%20on%20the%20environmental%20dashboard%20site.gif"
alt="A GIF of the details element animating upon opening on a page at environmentaldashboard.org">

I'm really happy with how it turned out and that I could quickly and easily
solve this issue! Of course, there's more work that goes into making this all
work: a `<details>` polyfill for browsers that don't yet support it, styling
the details and summary elements themselves, and ensuring consistency and
readability, but this was a nice deconstruction of just one part of my job and
I hope it helps anyone trying to figure this out in the future!
