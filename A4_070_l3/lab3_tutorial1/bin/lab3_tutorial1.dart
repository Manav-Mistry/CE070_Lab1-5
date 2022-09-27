import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;
import "dart:math";

void main(List<String> arguments) {
  /*
  num a = 10;
  a = 12.5;
  // a = "hiii"; 

  print(a);

  num b;
  b = 22.5;
  b = 10;
  // b = "hii";

  // b = a;
  print(b);


  double c = 8.5;
  b = c;
  print(b);

  */

  // Var  ---------

  var a = 10;
  // a = 12.5;
  // a = "hiii";

  print(a);

  var b;
  b = 22.5;
  b = 10;
  b = "hii";

  b = a;
  print(b);

  double c = 8.5;
  b = c;
  print(b);

  //  while loops:
  // this code will go into infinite loop
  // while(true) {
  //   print("hi");
  // }

  var count = 5;
  // print "hi" five times
  while (count > 0) {
    print("hi");
    count--;
  }

  // do while:
  // the code iwritten inside ->  do {
  //                              }
  // will run atleast one time

  bool condition = false;
  do {
    print("this will run atleast one time");
  } while (false);

  // break keyword:
  var count1 = 3;
  while (true) {
    if (count1 > 5) {
      break;
    }
    count1 += 2;
  }

  // Random interlude
  final random = Random();

  // while loop will run untill random.nextInt(10)+1 will give 7
  while (random.nextInt(10) + 1 != 7) {
    print("Try again");
  }
  print("You Win");

  // For loops:
  // we can declare increment variable, write condition and increment, all in one line of syntext
  for (var j = 0; j != 4; j++) {
    print(j);
  }

  // continue keyword:
  for (var j = 0; j <= 10; j++) {
    if (j % 2 == 0) {
      continue;
    }
    print(j);
  }
  // continue will immediate start next instruction .
  // Above code will print all odd numbers between 0 to 10

  //  for-in loops

  // for each loops
  // it will print all the element in the list one-by-one
  const arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  arr.forEach((element) => print(element));

  // onether syntext for forEach
  arr.forEach((element) {
    if (element % 2 != 1) {
      print(element);
    }
  });

  // Min-exercises
  // 1
  var counter = 0;

  while (counter < 10) {
    print("counter is $counter");
    counter++;
  }

  // 2
  for (var j = 1; j <= 10; j++) {
    print("${j * j} ");
  }

  // 3
  const numbers = [1, 2, 4, 7];
  for (var a in numbers) {
    print(sqrt(a));
  }

  // 4
  numbers.forEach((element) {
    print(sqrt(element));
  });

  // challenges
  // 1

  // 2
  // true && true : true
  // false || false : false
  // (true && 1 != 2) || (4 > 3 && 100 < 1) : true
  // ((10 / 2) > 3) && ((10 % 2) == 0) : true

  // 3
  num number1 = 5;
  num ans = 1;
  for (int j = 0; j < number1; j++) {
    ans *= 2;
    print(ans);
  }

  // 4
  var start1 = 1;
  var start2 = 1;
  print("$start1 ");
  for (int i = 0; i < number1; i++) {
    print("$start2 ");
    start1 = start2;
    start2 = start1 + start2;
  }

  // 5
  // total iteration : 6
  // sum = 0 + 1 + 2 + 3 + 4 + 5 = 15

  // 6
  int countdown = 10;
  while (countdown >= 0) {
    print("$countdown ");
  }

  // 7
  for (num i = 0; i < 1; i++) {
    print("$i.toStringAsFixed(1) ");
    i += 0.1;
  }

}
