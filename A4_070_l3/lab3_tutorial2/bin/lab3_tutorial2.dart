import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;
import "dart:math";

void main(List<String> arguments) {
  // print('Hello world: ${lab3_tutorial2.calculate()}!');

  // use of function
  // to not repeat the piece of code
  //ex:

  var b1 = 120;

  if (b1 > 100) {
    print("It is greater");
  } else {
    print("It is smaller");
  }

  b1 = 90;

  if (b1 > 100) {
    print("It is greater");
  } else {
    print("it is smaller");
  }

  // in above code the same condition is repeating two times
  //so to avoid this function used

  void check(int b1) {
    if (b1 > 100) {
      print("It is greater");
    } else {
      print("it is smaller");
    }
  }

  check(b1);
  b1 = 390;
  check(b1);

  // using multiparameter and return type

  String greeting(String fname, String lname) {
    return "Wecome $fname $lname";
  }

  String str3 = greeting("John", "garry");
  print(str3);

  // making parameter optional
  String greeting1(String fname, String lname, [String? mname]) {
    return "Wecome $fname $mname $lname";
  }

  // ? after String means nullable string

  // Error if we provide unsufficient args
  // String str3 = greeting("Johny")

  // Default value parameter
  String greeting2(String fname, String lname, [String mname = "Walker"]) {
    return "Wecome $fname $mname $lname";
  }

  // if we dont provide the optional parameter value then the default one is consider
  // Example
  print(greeting2("fname", "lname"));

  // We can also override that value
  print(greeting2("fname", "lname", "lname"));

  // Naming parameter
  // It is used for readability for the programer to have clear understaning about variable from calling side and in the function

  // for name parameter '{}' is used
  // example

  bool isValBetween(int val, {int min = 0, int max = 100}) {
    return min <= val && max >= val;
  }

  print(isValBetween(87, min: 50, max: 100));

  // We can not provide value without naming parameter
  // error
  // isValBetween(87, 50, 100);

//   Named parameters are
// optional by default, but value can’t be optional.

  bool isValBetween1({required int val, int min = 0, int max = 100}) {
    return min <= val && max >= val;
  }

  // In dart we can avoid return type
  miniFunction() {
    return "Hello World";
  }

  // Dart can infer that the return type here is String

  // Mini-exercises
  // 1

  youAreWonderful(String name) {
    return "You are wonderful $name";
  }

  // 2
  youAreWonderful2(String name, int numberPeople) {
    return "You are wonderful $name, $numberPeople think so.";
  }

  // 3
  youAreWonderful3({required String? name, int numberPeople = 30}) {
    return "You are wonderful $name, $numberPeople think so.";
  }
  

// Anonymous Functions

// Functions till now were named functions
// But functions don't always have to be named
// Use case : When we want to use it only once in the program

// Example
// String desc(int number){
//      return 'Number = $number';
// }

// This will work even when the function is not named
// Example
// (int number){
//      return 'Number = $number';
//}

// - In dart, functions are first class citizens
// - They can be assigned to another variables, returned from other functions and passed to another functions too

// Assigning functions to variables
// Function multiply = (int a, int b){
//    return a*b;
// };

// multiply is a function literal and thus is stored in data type 'Function'
// Named functions cannot be assigned to variables

// Passing functions to functions as parameters

// void func1(Function another){
//    // function body
// }

// Returning functions from functions - the return type is an anonymous function

// Function func1(){
//    return (){print("here");};
// }

// Let's try out an anonymous function

final multiplier = (int a, int b){
  return a*b;
};

print(multiplier(3,4));

// Let's try returning a function
Function applyMultiplier(num multiplier){
  return (num value){
    return value*multiplier;
  };
}

// So if we write like this
final mulFunc = applyMultiplier(5);
// Now we have a function in mulFunc that'll multiply any number with 5 on calling
num valAfterMul = mulFunc(10);
// So valAfterMul will have value = 50

// We can also use anonymous functions in forEach loops

const numberValues = [1,2,3];

numberValues.forEach((element) {
  final mul = 5 * element;
  print(mul);
});

// Closures

// Anonymous functions in dart act as closures - meaning - closes around - thus, the scope has access to all the variables and functions within that scope

// Let's define a scope
{
  var age = 42;
  (parameters){
    // can access age
    age = 34;
  };
}

// Each function has its own closures and each closure has its independent storage

// Example

// Function countingFunction(){
//  var counter = 0;
//  final incrementor = (){counter+=1;
//    return counter;
//  };
//  return incrementor;
// }

// final counter1 = countingFunction();
// final counter2 = countingFunction();

// print(counter1()) // 1
// print(counter2()) // 1
// print(counter2()) // 2
// print(counter1()) // 2
// print(counter1()) // 3

// Mini exercises

// 1.
final wonderful = (String name) {
    return "You are wonderful $name";
  };

// 2.
const people = ["Chris", "Tiffany", "Pablo"];
people.forEach((element) {wonderful(element);});

// Arrow functions

// The function below
// int add(int a, int b){
//  return a+b;
// }
// Can be re written as
// int add(int a, int b) => a+b;

// This is of the form (parameters) => expression

// Mini exercises

// 1.
final wonderful2 = (String name) => "You're wonderful $name";

// Challenges

// 1. Write a function that checks if a number is prime or not

final primeChecker = (val){
  if(val<=1){
    return false;
  }
  bool prime = false;
  for(num i = 2;i<val;i++){
    if(val%num == 0){
      prime = true;
      break;
    }
  }
  return prime;
};

// 2. Can you repeat that?
final repeatTask = (int times, int inp, Function task){
  num ans = inp;
  while(times-->0){
    ans = task(ans);
  }
  return ans;
};

repeatTask(4,2,(int number){return (number*number);});

// 3. Update 2 to use arrow syntax

final repeatTask2 = (int times, int inp, Function task){
  num ans = inp;
  while(times-->0){
    ans = task(ans);
  }
  return ans;
};

repeatTask2(4,2,(int number) => (number*number));

}