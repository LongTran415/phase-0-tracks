// write a function that takes an array of words or phrases and returns the
// longest word or phrase in the array.

  // input: an array of words
  // output: the longest string in that array
  // steps:
    // create a function
      // compare the length of the characters to return the longest object.
      // sort all the objects in the array
      // remove longest object at the end
//
function longest_word(array){
  sorted_array = array.sort();

  return sorted_array.pop();
}

// driver code for longest_word method

// console.log(longest_word(["long phrase","longest phrase","longer phrase"]));
// console.log(longest_word(["Hello", "Bibbidy", "Bobbity", "Hello", "Superstition"]));

// returns = ["longest phrase"]
// returns = ["Superstition"]

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// write a function that takes two objects and checks to see if the
// objects share at least one key-value pair.

  // input: two objects with key-value Pairs
  // output: a boolean value of true because at least on key-value pair match
    // if no pairs match returns false
  // steps:
    // create a function with two arguments
    // compare the two agrguments to see if any key-value pairs are equal to eah other
    // if one pair is equal return true
    // if no pairs are not equal return false


function key_value_match(hash1, hash2){
  var is_equal = false

  if (hash1["age"] == hash2["age"] || hash1["name"] == hash2["name"]) {
     is_equal = true;
  };

  return is_equal;
}

// driver code for

// console.log(key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
// console.log(key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 23}))
// console.log(key_value_match({name: "Tami", age: 54}, {name: "Tami", age: 56}))

// reuturns = true
// reuturns = false
// reuturns = true

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// write a function that takes an integer for length,
// and builds and returns an array of strings of the given length

// input: an integer
// output: a specificed amount of strings placed into an array. The words should be of
// randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.
// steps:
  // create a function with an integer as an argument
  // the integer represents the amount of strings we create and put into
  // a new array.
  // create a new empty array
  // create an array of constanants
  // create an array of vowels
  // for the desired amount of times speciified in the function:

      // go through the constanants array a random number of times
        //and return the index
      // go through the vowels array a random number of times and return the index

  // combine the output of constanants array and the vowels array into a string and
  // put them into a new array.
  // return the array as an output


function random_words_array(integer){

desired_amount = 4;
words_array = [];

for (var i = 0; i < integer; ++i){

    letters = ["a","b","c","d","e","f","g","h","i","j",
                "k","l","m","n","o","p","q","r","s","t",
                ,"v","w","x","y","z"];



    random_num = Math.floor((Math.random() * 10) + 1);
    random_num2 = Math.floor((Math.random() * 10) + 1) + random_num;

    // for (var i = 0; i < random_num; ++i){
    con_strings = letters.slice(random_num, random_num2).join("")
    words_array.push(con_strings);
};

return words_array;

}

// driver code for random_words_array

console.log(random_words_array(4));

console.log(longest_word(random_words_array(10)));
