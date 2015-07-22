---
title: Tips And Stuff
published: flase;
---

~~~ sh
ls -lrt `find source/thoughts -mindepth 3 -not -empty -type d` |
sed -e "s/  */ /g" |
awk '{if (NR!=1) {print}}' |
cut -d " " -f 6-
~~~
