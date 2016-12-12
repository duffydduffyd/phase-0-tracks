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



