


var horse_color = ["Yellow", "Teal", "Violet", "Red"]

var horse_name = ["Ed", "Rudy", "Steven", "Rambo"]

horse_color.push("Purple")

horse_name.push("Bob")

// console.log(horse_color);

// literal construction
var horse = {"Ed": "Yellow", "Rudy": "Teal", "Steven": "Violet", "Rambo": "Red", "Bob": "Purple"};

console.log(horse);

function Horse(name, color){ console.log("Our new horse:", this);
      this.name = name;
      this.color = color;


function Car(type, color){
  console.log("Our new car:", this);
      this.type = type;
      this.color = color;
      this.take_off = function(){ console.log("Zoooooom!");
};
                 
