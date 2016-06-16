// a function that takes a string parameter and reverses the string
//steps:
  // create a function
  // create a loop with the string input that returns the string indexes in reverse
  // print out string with some condition
// input: a string
// output: the string reversed



// reverses string


//array iteteration

function reverse_str(string) {
  string_arry = [];
  for (var i = string.length -1 ; i >= 0; i--) {
     string_arry.push(string[i]);
  }
 return string_arry.join("");

}


// string iteration

function reverse_str2(string) {
  returnVal = "";

  for (var i = string.length - 1; i >= 0; i--) {
    returnVal += string[i];
  }

  return returnVal;
}

string = reverse_str("hello")
string = reverse_str2("hello")

// driver code

console.log(string)

// conditional statement
if (1 == 1) {
  console.log(string);
}






console.log(string)
