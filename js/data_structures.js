// Release 0: Work with Arrays
var colours = ["cerelean", "lavender", "vivid_orange", "gay_bright_purple"];
var horse_names = ["Penny", "Bo_Jack", "Secretariat", "Sleepy"];

colours.push("neon_yellow");
horse_names.push("Gertrude");

console.log(colours);
console.log(horse_names);

// Release 1: Build an Object
var horses_and_colours = {};

for (var i = 0; i < colours.length; i++) {
	horses_and_colours[horse_names[i]] = colours[i];
	}

console.log(horses_and_colours)



// Release 2: Build Many Objects Using a Constructor
function Car(year, make, model) {

	this.year = year;
	this.make = make;
	this.model = model;
	
	this.go = function() { console.log("Vroom!"); };
}

var newCar = new Car("1999","Honda","Accord");
console.log(newCar);
newCar.go();

var anotherNewCar = new Car("2225","Google","Driverless Prototype 25");
console.log(anotherNewCar);
anotherNewCar.go();

var yetAnotherNewCar = new Car("1979","Delorian","Back_to_the_Future_Model");
console.log(yetAnotherNewCar);
yetAnotherNewCar.go();

//console.log(newCar[1]);  Doesn't work


// Release 3: Research on Your Own
// Iteration over Key Value of the object Dog

var dog = {
  ralph: 'green',
  nancy: 'yellow',
  taylor: 'purple',
};

for (var name in dog) {
  if (dog.hasOwnProperty(name)) {
    console.log('this is dog (' + name + ') for sure. Value: ' + dog[name]);
  }
  else {
    console.log(name);
  }
}


// output:
// js (javasunday) :> node data_structures.js
// [ 'cerelean',
//   'lavender',
//   'vivid_orange',
//   'gay_bright_purple',
//   'neon_yellow' ]
// [ 'Penny', 'Bo_Jack', 'Secretariat', 'Sleepy', 'Gertrude' ]
// { Penny: 'cerelean',
//   Bo_Jack: 'lavender',
//   Secretariat: 'vivid_orange',
//   Sleepy: 'gay_bright_purple',
//   Gertrude: 'neon_yellow' }
// Car { year: '1999', make: 'Honda', model: 'Accord', go: [Function] }
// Vroom!
// Car {
//   year: '2225',
//   make: 'Google',
//   model: 'Driverless Prototype 25',
//   go: [Function] }
// Vroom!
// Car {
//   year: '1979',
//   make: 'Delorian',
//   model: 'Back_to_the_Future_Model',
//   go: [Function] }
// Vroom!
// undefined
// this is dog (ralph) for sure. Value: green
// this is dog (nancy) for sure. Value: yellow
// this is dog (taylor) for sure. Value: purple
