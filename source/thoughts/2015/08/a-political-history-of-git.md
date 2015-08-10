---
title: A Political History of Git
description: Looking at some of the worst parts of Git, and what it means for accessibility and diversity.
date: 2015-08-10
tags: accessibility, diversity, tech
---

Git is a program that helps people keep track of their code. It's wildly
popular in tech communities, and almost impossible to be a programmer or
computer scientist without having heard of it. But there are some problems with
where it came from, problems that show us the perils of designing software with
a closed perspective. We need to talk about Git.

# It’s Harsh

## Let’s Start At The Beginning

Git was created by Linus Torvalds, with his infamously [unapologetic and toxic
attitude](http://www.wired.com/2012/11/linus-torvalds-isoc/) toward people
involved in his sphere of influence. A couple years ago someone tried to [call
him out on his
attitude](http://www.theregister.co.uk/2013/07/16/torvalds_potty_mouty_fight_back/)
and he defaulted to a distinctly whiny argument about what “professionalism”
means. I sort of sympathize, actually.

Concepts like professionalism are disguised attempts to maintain power
structures that don’t come from merit or authority, but from privilege and
rigid hierarchy. Usually those calling for professionalism are looking to
suffocate oppressed groups with a standard on what it means to act "correctly".
But I don’t think Linus and I have the same complaint about professionalism.
When he uses that argument to defend his verbal abuse, he’s not defending
himself against a rigid power structure - he’s the man at the very top of a
very important project abusing his position. As the man who created Linux on a
whim, does he really think he needs to resort to curse words in multiple
languages and threats to get his point across, to assert his authority over a
global project that bears his name? More poignantly, it shows how little he
thinks of contributing developers. When he thinks that using violent language
is necessary to express how much Linux matters to him and to the world, he’s
discrediting the passion and expertise those contributing have, assuming that
they can't **possibly** understand how important a mistake in the Linux project
is. When someone like that creates Git, you’re going to have a bad time.

## 3 Years After Git, We Got The Hub

The words in a commit message, or more likely, a pull request or issue, which
anyone can post on a Git project, can be dangerous and ugly, and, right now,
it’s the responsibility of the project maintainer to slog through that
potentially offensive content. That's especially hard when the project
maintainer is the one being harassed by these requests. While this is an issue
with Github, which was founded in 2008 around Git, we’ll count it as a crucial
part of the Git ecosystem (because the reality is, Git doesn’t exist without
Github for a lot of developers). As Gizmodo pointed out a couple years ago, you
don’t have to look very hard to find [incredibly offensive and demeaning
messages in software](http://gizmodo.com/5980842/there-is-blatant-racist-and-sexist-language-in-github-code)
hosted on Github.

This represents a completely inadequate handling by Github, a company whose
tagline is a call to “Build better software, **together**.” How are we supposed
to build better software together when nothing’s being done to make the
experience of social coding safe? When some of us aren’t considered worthy of
being included when you say “together"? As a parallel, let’s take Twitter.
While, notably, Twitter [doesn’t deal with its abuse
well](https://nakedsecurity.sophos.com/2015/02/06/twitter-ceo-admits-we-suck-at-dealing-with-abuse-and-trolls/),
it’s important that they are acknowledging and trying to make up for their
mistakes. When you have a platform that is facilitating the communication of
millions, it’s up to you to ensure that there are systems in place that don’t
leave your users out in the open to abuse. I’ll give minor credit where credit
is due: [Github recognized this in 2011 and has
tried](https://github.com/blog/862-block-the-bullies), but it looks like
they’re not doing enough. It especially looks that way when their first female
developer quit last year, citing [a sexist
culture](http://www.dailydot.com/technology/julie-ann-horvath-quits-github-sexism-harassment/).
When you have a company that doesn’t treat its employees fairly, how can they
build systems that allow people to be treated fairly?

# It’s Inaccessible

I’m not the [only person to point out Git’s design
flaws](http://stevebennett.me/2012/02/24/10-things-i-hate-about-git/), hell,
even [the Git book
admits](https://git-scm.com/book/en/v1/Git-Internals-Plumbing-and-Porcelain):

>because Git was initially a toolkit for a VCS rather than a full user-friendly
VCS, it has a bunch of verbs that do low-level work and were designed to be
chained together UNIX style or called from scripts.

It’s a shame when you have to point out that certain parts of your software are
user hostile. As a new user to Git, if you don’t know about the `man` pages, if
you’re not familiar with a computer scientist’s vision of trees, or if you’re
new to programming in general, the whole thing is simply an impenetrable wall
as far as reading the documentation. I know programmers twice my age who,
because Git was introduced late in their career, or they’re just now switching
to programming, they’re finding **Git** to be one of the most difficult things
to **use**. And it's important that I wrote the word 'use.' It's not that people
aren't "smart enough" to use Git, it's that Git is difficult to use.

Git has a command line oriented syntax, and like the above quote mentioned, it
looks more like arcane UNIX commands than a full fledged program. The concept
of a complete history of you project is useful, but completely inaccessible
because the language about the revision HEAD doesn't make it obvious, at all,
that Git is that powerful. Let's take one command, just one: `git checkout`.

"What is the command `git checkout` good for?" you may be asking yourself.
Well, you can:

~~~ ruby
# Use it switch the state of your git branch
git checkout someBranch

# Use it to make a new branch
git checkout -b someBranch

# Use it go back in your tracked history
git checkout 123456
~~~

I understand why Git ended up having so much functionality crammed into every
one of its commands, because for those who have been using it for years daily,
it really is convenient. But for those who haven't or can't dedicate years of
their lives to get up to speed, a popular — nearly vital — piece of software is
completely shrouded in frustration.

No one has a single solution to increasing diversity in technology, but, across
all diversity lines, it’s not going to be any easier if we keep building more
tools like Git.  It not only ignores a lot of what we know about user interface
design, but comes from a place that is distinctly a “boys-club” - specifically
a predominately-white-boys-who-dedicate-their-lives-to-kernel-wars club. And
it’s not that I don’t appreciate Linux or the FOSS community, whose many
members dedicate themselves to expertise and volunteer-made software. It’s
exactly _because_ I appreciate the FOSS community that I want to see its
contributions, which are supposed to be about freedom or something, be
accessible to those of us who can’t afford to be well versed in the intricacies
of obscure documentation and deep computer science theory. I want beginners,
and especially people without the privilege of access to supportive education
and environments, to be able to contribute and learn the way we make software.
The community that made Git, by being homogeneous, made design decisions that
not only aversely affect [trans
lives](http://geekfeminism.org/2012/09/29/quick-hit-how-git-shows-the-patriarchal-nature-of-the-software-industry/)
and [women and
minorities](http://gizmodo.com/5980842/there-is-blatant-racist-and-sexist-language-in-github-code),
but design decision that just make Git a pain to master. By being such a
product of single-mindedness, Git has made it a tough experience for the rest
of us. Diverse teams bring diverse, broad perspectives to software and if we’re
going to fulfill Github’s vision for social coding, it’s going to take a more
inclusive, committed culture.

# It Isn’t Just Git

I picked on Git here because it’s a famous example, and because I've become an
amateur Git user this summer, so it's been on my mind. Git represents a wildly
successful and simultaneously problematic history: one in which men make things
for men (I think [Microsoft already taught us the perils of this once
before](http://www.theatlantic.com/technology/archive/2015/06/clippy-the-microsoft-office-assistant-is-the-patriarchys-fault/396653/).)
White people build things for white people. So on and so forth, ad nauseam.
When you have a culture that’s been reproducing itself by bringing in more of
the same people to build more of the same things, you don’t have a culture
that’s making tech for everyone, you have an incredibly smart industry that’s
making things for themselves. And it's not very revolutionary when these people
have been privileged for centuries by making the world in their image.  Whether
this is because of where it came from, or the work that’s being built on top of
it, or the awful design decisions made for it, Git stands as shining example of
the crap we get when we don’t have diversity in tech. Going forward, we need to
be intentional about diversity in tech, and realize that we’ll do better only
when we acknowledge that rampant other-ing and discrimination is destroying us,
in and out of tech. We can do **so much better**.

*[FOSS]: Free and Open Source Software
*[VCS]: Version Control System
