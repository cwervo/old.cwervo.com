
textInputs = [];

// Make everything a pure function???? :)
function oodle() {
    textInputs = document.getElementsByTagName("input");
    textInputs = Array.from(textInputs).filter(function(input) {return input.type === "text"});
    letters = document.getElementById("letters-to-replace");
    l = letters.value.split(',');
    replacement = document.getElementById("replacement");
    word = document.getElementById("word");
    result = document.getElementById("result");

    console.log("letters are " + letters.value);

    // l is an array of the

    // Bind any of the letters changing to fire the helper function
    // letters.addEventListener('input', letters_changed);
    letters.addEventListener('input', oodle_helper);

    // Add event listeners
    replacement.addEventListener('input', oodle_helper);
    word.addEventListener('input', oodle_helper);
    for (i = 0; i < textInputs.length; i++) {
        textInputs[i].addEventListener('keyup', resizeInput);
    }

    // Fire once when the page loads & this function is called for the first time!
    oodle_helper();
    resizeAllInputs();
}

function resizeInput() {
    this.size = this.value.length === 0 ? 1 : this.value.length;
    console.log("changed the size!");
}

function resizeAllInputs() {
    for (i = 0; i < textInputs.length; i++) {
        textInputs[i].size = textInputs[i].value.length === 0 ? 1 : textInputs[i].value.length;
    }
}

function oodle_helper() {
    // Remove leading, ending, and comma-padding spaces. Then remove all blank strings.
    l = letters.value
    .replace(/(^ *)|( *$)/g, "")
    .replace(/( *, *)/g, ",")
    .split(',').filter(function(n){ return (n != " ") && (n != "") });

    // Create a new expression, or-ing each string in letters-to-replace together
    var r = l.join('|')
    var regex = new RegExp (r, "gi")

    new_result = word.value.replace(regex, replacement.value);
    console.log("regexp regex is :" + regex);
    // new_result = word.value.replace(regex, replace.value);

    console.log ("inner of result is: " + new_result);
    // result.innerHTML = word.value;
    result.innerHTML = new_result;

    // // event handler
    // .keyup(resizeInput)
    // // resize on page load
    // .each(resizeInput);
}

window.onload = oodle;

