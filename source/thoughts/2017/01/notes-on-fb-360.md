---
title: Notes on FB 360
description: A collection of things I learned making 360 videos and photos work in Facebook.
date: 2017-01-09
tags: vr
---

Note: Everything that follows in this post is specific to getting Facebook to recognize
media in a 360 degree format, although this may help you with other platforms,
most likely YouTube.

#Photos

Through searching the Facebook forums, I was initially pointed to [this Dropbox
folder](https://www.dropbox.com/sh/70mwlh8k0y4rg0g/AACVNV7hvRZtjEKj4DoJMhCba?dl=0)
filled with templates that come embedded with appropriate 360 metadata, with the
caveat that you only use the "Save As" option in Photoshop, instead of "Export"
or "Save for Web", because "Save As" is guaranteed to preserve the metadata.
And these templates were really useful for some initial messing around with
Facebook 360s.

But after a while I found that restricting, wanting to make images without
relying on a template every time, and so I decided to search again, until I
happened upon [this wonderful page outlining how to edit and inject metadata
360 photos](https://facebook360.fb.com/editing-360-photos-injecting-metadata/)
right from [facebook360.fb.com](https://facebook360.fb.com/). It's here that
you can find the original reference to the Dropbox template folder, but more
interestingly you see how a program called [exiftool](http://www.sno.phy.queensu.ca/~phil/exiftool/)
can help you inject metadata into a photo:

    exiftool -ProjectionType="equirectangular" photo.jpg

I started using this so much that I made a little alias for it:

    alias vrexif='exiftool -ProjectionType="equirectangular"'

In fact, you can specify a bunch of different metadata options to control
Facebook's presentation and processing of 360 panoramas:

    # 120º h_fov, 86º v_fov
    exiftool -FullPanoWidthPixels=18000 -FullPanoHeightPixels=9000 -CroppedAreaLeftPixels=6000 -CroppedAreaTopPixels=2350 -CroppedAreaImageWidthPixels=6000 -CroppedAreaImageHeightPixels=4300 -ProjectionType=cylindrical file.jpg
    # 150º h_fov, 86º v_fov
    exiftool -FullPanoWidthPixels=14400 -FullPanoHeightPixels=7200 -CroppedAreaLeftPixels=4200 -CroppedAreaTopPixels=1880 -CroppedAreaImageWidthPixels=6000 -CroppedAreaImageHeightPixels=3440 -ProjectionType=cylindrical file.jpg
    # 180º h_fov, 86º v_fov
    exiftool -FullPanoWidthPixels=12000 -FullPanoHeightPixels=6000 -CroppedAreaLeftPixels=3000 -CroppedAreaTopPixels=1567 -CroppedAreaImageWidthPixels=6000 -CroppedAreaImageHeightPixels=2867 -ProjectionType=cylindrical file.jpg
    # 240º h_fov, 86º v_fov
    exiftool -FullPanoWidthPixels=9000 -FullPanoHeightPixels=4500 -CroppedAreaLeftPixels=1500 -CroppedAreaTopPixels=1175 -CroppedAreaImageWidthPixels=6000 -CroppedAreaImageHeightPixels=2150 -ProjectionType=cylindrical file.jpg
    # 300º h_fov, 86º v_fov
    exiftool -FullPanoWidthPixels=7200 -FullPanoHeightPixels=3600 -CroppedAreaLeftPixels=600 -CroppedAreaTopPixels=940 -CroppedAreaImageWidthPixels=6000 -CroppedAreaImageHeightPixels=1720 -ProjectionType=cylindrical file.jpg
    # 360º h_fov, 86º v_fov
    exiftool -FullPanoWidthPixels=6000 -FullPanoHeightPixels=3000 -CroppedAreaLeftPixels=0 -CroppedAreaTopPixels=783 -CroppedAreaImageWidthPixels=6000 -CroppedAreaImageHeightPixels=1433 -ProjectionType=cylindrical file.jpg
    # 360º h_fov, 65º v_fov
    exiftool -FullPanoWidthPixels=6000 -FullPanoHeightPixels=3000 -CroppedAreaLeftPixels=0 -CroppedAreaTopPixels=958 -CroppedAreaImageWidthPixels=6000 -CroppedAreaImageHeightPixels=1083 -ProjectionType=cylindrical file.jpg

I haven't played around with these options extensively, but I imagine a shell
function for all these options would be convenient.

## Video

I wish it were possible to upload GIFs, to save resources and export time, but
in lieu of doing that, I've started uploading 360 degree videos to satisfy my
passion for playing around with motion. At first it was hard to figure out how
to do that for Facebook because there's not a handy guide for injecting
metadata in videos like there is for photos, so I tried to take a more general
approach and look for general 360 metadata authoring tools.

Using that approach I found [this excellent YouTube
Help](https://support.google.com/youtube/answer/6178631?hl=en) article that led
me to the [Spatial Media](https://github.com/google/spatial-media) repo. You can
certainly compile the application from source, or run it through Python 2.7
commands but I found it much easier to go to [the releases section](https://github.com/google/spatial-media/releases/tag/v2.0)
and download the standalone OS X app, `Spatial Media Metadata Injector.app`.
Just hit the "My video is spherical (360)" option in the app and upload and
inject the metadata to your video, and it works like a charm! I'm unsure if
Facebook supports stereoscopic video (I presume so, because of Oculus, but it
might just attempt automatic conversion into that format) or binaural (e.g.
"spatial") audio, but those metadata options you can set in this app too!

Here're a couple of my Facebook posts that were made in the process of me
figuring all of this out:

- [A little snek video](https://www.facebook.com/cwervo/videos/1505929912755203/?l=2973292618226338993)
    - [Google VR View version](http://andrescuervo.github.io/vrview/?video=images/2017/january8and9/blurry_snek.mp4)
- [Some ridiculous stairs](https://www.facebook.com/photo.php?fbid=1507291499285711&set=pb.100000146252251.-2207520000.1484035616.&type=3&size=1024%2C1024)
    - [Google VR View version](http://andrescuervo.github.io/vrview/?image=images/2017/january8and9/staircase-illusion.jpg)
- [A flooded room](https://www.facebook.com/photo.php?fbid=1506003762747818&set=pb.100000146252251.-2207520000.1484035616.&type=3&size=1024%2C1024)
    - [Google VR View version](http://andrescuervo.github.io/vrview/?image=images/2017/january8and9/flooded-room.jpg)
- [A funny dog](https://www.facebook.com/cwervo/videos/1505302079484653/?l=4361733656676865104)
    - [Google VR View version](http://andrescuervo.github.io/vrview/?video=images/2017/january8and9/doggonado.mp4) (Notice how VR View doesn't disrupt the video even though it's short, but FB does)
- [The "Great Room" at the Internet Archive headquarters](https://www.facebook.com/photo.php?fbid=1505004889514372&set=pb.100000146252251.-2207520000.1484035616.&type=3&theater)
    - [Google VR View version](http://andrescuervo.github.io/vrview/?image=images/2017/january8and9/internet-archive-center-of-great-room.jpg)
