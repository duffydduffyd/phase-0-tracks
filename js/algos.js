// 7.3 Solo Challenge: Algorithm Practice by Denise Duffy 12/12/16

// Release 0: Find the Longest Phrase

// define an array
var myArray = ["long phrase","longest phrase","longer phrase"]
var myArray = ["ox", "ant", "hippo"]
var myArray = ["dark", "fart", "pigs"]
var index = 0

var myLongestString = 0
// iterate through array and compare the length of each string in the array to the
// previous string

// // for ([initialExpression]; [condition]; [incrementExpression])
// // statement

for (index = 0; index < myArray.length; ++index) {
  // 	console.log(myArray[index])
	// if longest string is greater then they previous, define as var
	if (myArray[index].length > myLongestString) {
	 var myLongestString = myArray[index].length;
	// use one more variable to define the positon of the longest string 
	 var longest = myArray[index] 
		}
}

// print the longest string
 console.log (longest)

// output:
// js (javasunday) :> node algos
// longest phrase

// js (javasunday) :> node algos
// hippo

// js (javasunday) :> node algos
// dark



// Release 1 

// write a function that takes two objects and checks to see if 
// the objects share at least one key-value pair

// set up some objects as variables
var firstBar = {name: "Wild Side West", "year": 1972};
var secondBar = {name: "Saint Marys Pub", "year": 1967};
var thirdBar = {name: "Saint Marys Pub", "year": 1967};
var parkingTickets = {date: "December 16", "street": "Whitney"};

// take in two objects as arguments so as to compare them
function Compare(object1, object2) {

// test to see if this print statement will actually work, it doesn't seem to
// console.log("Our objects are:", this);

// define these objects as globalish variables
 	this.object1 = object1;
 	this.object2 = object2;

// add print statement to verify that these objects were passed in 
 	console.log(object1);
	console.log(object2);

	// for practice, this is a test just comparing the entire objects
	if (object1 === object2); {
		console.log("These objects are the same.");
		// return true;  // => this true statement is not working
	}
	// else { 
	// 	console.log("These objects are not the same.");
	// //  	return false; // => this false statement is not working 
	// //    maybe look at defining it an adavance like using Compare: true
	// }

// iterate through objects keys and values
// create an if / else statement that compares the two object's keys / value pairs
	for (index = 0; index < object1.length; index++) { 
		console.log(object1[index]);

// return true if keys and values match, however, i don't really understand how to do this. :(
// bring this to office hours, some ideas below
	// var keyName = object1[index]
	// object1.keys === object2.keys
	// compare.hasOwnProperty(key)

// return false if keys and values don't match
	}
}

// write some driver code to push through the function
// Compare(firstBar,secondBar) // returns false
Compare(thirdBar,secondBar) // should return true




// Release 2: Generate Random Test Data

// create function that takes an integer as an arguement
function generateRandomArray(length) {
	
// generally figure out how to generate a randomize string of varying length 1-10 letters
// this actually seems like it could be it's own function, however I will keep it in this 
// function as two actions 
	var randomString = "";
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

	// index is the wrong variable here, but i am using it, it does loop 10 times
	for (var index = 1; index <= 10; index++)
		
	// for (var x = 1; x <= 10; x++) // this just returns the last string at with 1
	// random letter
	// for (var length = 1; length <= 10; length++);

		// got this line from stack overflow, not sure how it works really
		// it does return a random string of 10 letters, but not of varying lengths 
		randomString += possible.charAt(Math.floor(Math.random() * possible.length));
  	
		console.log(randomString) // ==> KpIJVhyhdD

// return array with the number of string items equal to the integer taken as an argument

	// let's see if i can just generate an array with the length of 4
	newArray = []

	for ( var index = 0; index <= 4; index ++){
		newArray[index] += randomString;
		return newArray;
	}

	// nothing is happening when i am printing this
	console.log(newArray) // ==> [ 'undefinedKpIJVhyhdD' ]
		
}

// add driver code that generates array
generateRandomArray(4) 

// add driver code that prints the array
// console.log(newArray)

// add driver code that feeds the longest string function from above (oh, crap, need to 
// make that into a proper function or at least make it equal to a variable name)

// print the result of the longest string in the random generated string array. 






// gosh, i know this is a total mess. did the best i could with limited time. spent the
// the week studying for my ruby exam. 

































