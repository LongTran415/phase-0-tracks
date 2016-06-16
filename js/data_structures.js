

// Release 1

var horse_color = ["Yellow", "Teal", "Violet", "Red"]

var horse_name = ["Ed", "Rudy", "Steven", "Rambo"]

horse_color.push("Purple")

horse_name.push("Bob")

console.log(horse_color);


// Release 2


// literal construction
var horse = {"Ed": "Yellow", "Rudy": "Teal", "Steven": "Violet", "Rambo": "Red", "Bob": "Purple"};


console.log(horse);



// Release 3

function Horse(name, color){ console.log("Our new horse:", this);
      this.name = name;
      this.color = color;


function Car(type, color){
  console.log("Our new car:", this);
      this.type = type;
      this.color = color;
      this.take_off = function(){ console.log("Zoooooom!");
};
}

// driver code
var fastCar = new Car("Corvett", "Red");

fastCar.take_off();
console.log(fastCar)

// driver code
var workCar = new Car("Pick up truck", "White");
console.log(car_arry);

onsole.log(workCar)

// driver code loop
for (var obj in horse) {
  console.log(obj)
}
