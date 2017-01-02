// make sure documents are connected
console.log ("I am linked.");

// $() says, "hey, jQuery things are about to happen!"
// Putting document between the parentheses tells us that we're about to work 
// our magic on the HTML document itself
// .ready(); is a function, or basic action, in jQuery. It says "hey, I'm 
// going to do stuff as soon as the HTML document is ready!"
// Whatever goes in .ready()'s parentheses is the jQuery event that occurs 
// as soon as the HTML document is ready.
// $(document).ready(something);"when the HTML document is ready, do something!" 
// (We'll show you how to replace something with an action in the next exercise.)

$(document).ready();





// $(document).ready(function(){
    
//     $('div').slideDown('slow');

// });

// $(document).ready(function() {
//     $('div').mouseenter(function() {
//         $('div').hide();
//     });
// });
// $(document).ready(function(){
//     $("div").slideDown('slow');
// });

$(document).ready(function() { 
    $('div').mouseenter(function() { 
        $('div').fadeTo('fast', 1); 
    }); 
    
    $('div').mouseleave(function() { 
        $('div').fadeTo('fast', .5); 
    });
});




