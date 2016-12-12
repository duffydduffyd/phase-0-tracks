// 7.1 Pseudocode a string that has it's letters reversed. 12/11/16


// // Question 1

// // declare a string variable and set up new string variable

var myString = "Denise"

var reversedString = ""

// // take the position of the last indice of the string, which is length-1
// // and add this to the reversed string variable 
// // iterate over the length of the string subtracting one from the index until it reaches 0


// // for ([initialExpression]; [condition]; [incrementExpression])
// // statement

for (var i = myString.length-1 ; i >= 0 ; i--) {
	reversedString += myString[i];
  }

// print to the console the new string
console.log(reversedString);



// Question 4

// In function form:

// Question 5 


function backwardsString(string) {
	
	// Create an empty string that will host the new string
	var reversedString = "";

	// take the position of the last character index of the string, which is length-1
	// and add this to the reversedString variable 
	// iterate over the string subtracting one from the index until it reaches the 0 position
	for (var i = string.length-1; i >= 0 ; i--) 
		reversedString += string[i];
	
	// conditional print statement
	if (1 == 1) { console.log(reversedString); 
	}
	else {
    console.log("The condition is false");
	} 
}

// driver code
newString = backwardsString("hello")



// output:
// js (javasunday) :> node explore.js
// olleh


