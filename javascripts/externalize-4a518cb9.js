/*doc
  ---
title: Externalize
category: Javascript
---
The file externalize.js is a little piece of jQuery that goes through all links
(`<a>` tags) and sets their 'target' attribute to `_blank` if they are links
to another website, causing browsers to open those links in new tabs.

```haml_example
:markdown
 * [Link to this page.] (#) This link will open in the current
 tab because it directs to a page that is in the same host.
 * [ A link to example.com ] (http://www.example.com) Since this link
 *isn't* in the same host, it should open in a new tab.
 ```
 */

$(window).load(function(){
    $('a').each(function () {
        if (this.host !== location.host) {
            external
            this.setAttribute('target', '_blank');
        }
    });
});
