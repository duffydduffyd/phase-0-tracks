# Notes on JQuery

## approach
1. 40 minutes learning, 5 minutes break, repeat 4 times
2. Checkout Code academy for first two 40 minute sessions 
3. Checkout the web for cheat sheets and brainstorm ideas for third 40 minute session.
4. Execute a quick with last 40 minutes with JQuery


*make sure documents are connected
*console.log ("I am linked.");

*$() says, "hey, jQuery things are about to happen!"
*Putting document between the parentheses tells us that we're about to work 
*our magic on the HTML document itself
*.ready(); is a function, or basic action, in jQuery. It says "hey, I'm 
*going to do stuff as soon as the HTML document is ready!"
*Whatever goes in .ready()'s parentheses is the jQuery event that occurs 
as soon as the HTML document is ready.
*$(document).ready(something);"when the HTML document is ready, do something!" 
(We'll show you how to replace something with an action in the next exercise.)


*$(document) is a jQuery object. The $() is actually a function in disguise; it turns the document into a jQuery object.
*.ready() is a type of function; you can think of it as sort of a helper that runs the code inside its parentheses as soon as the HTML document is ready.
*function(){} is the action that .ready() will perform as soon as the HTML document is loaded. (In the above example, the Do something placeholder is where those actions would go.)