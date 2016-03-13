---
title: nope
---

Testing some stuff
<style contenteditable style="display:inline-block; background-color: white; color: black;">
@keyframes myAnimation {
  0% {
    opacity: 0;
    transform: translate(0, 0);
  }
  30% {
    opacity: 1;
    transform: translate(0, 0);
  }
  60% {
    transform: translate(100px, 0);
  }
  100% {
    transform: translate(100px, 100px);
  }
}
#box {
    border: 1px solid black;
    width: 100px;
    height: auto;
   animation: myAnimation 3s;
}
</style>

<span id="box">boop</span>
