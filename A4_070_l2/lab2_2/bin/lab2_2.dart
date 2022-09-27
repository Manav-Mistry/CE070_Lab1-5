import 'package:lab2_2/lab2_2.dart' as lab2_2;
import 'dart:math';

void main(List<String> arguments) {
  print('Hello world: ${lab2_2.calculate()}!');

  // Comments:
    // this is a single line comments

  // Multiline Commnent:
    /* 
      this is a
      multiline comment
    */

  //Nested comments:
    /* this is a
      /* multiline */ 
      comment 
    */

  //Documentation comments:

    /// this is single line documentation comment
    
    /** This is 
     *  Multiline Documentation 
     * comment
     */

    /*
    //Statements:

      print("hello world");

      if(100 > 10) {
        print("Complex statement");
      }

    */

    // pi is constant in dart:math 
    print(pi);


    // Data types:
    int myInt = 10;
    double myDouble = 3.3223;
    // we can not assign one type of variable to other type
    // error
    // myInt = 3.23;

    // dynamic type
    dynamic myDynamic = 3;
    // we can assign any other dataType value to dynamic variable
    myDynamic = 33.33;

    // var keyword
    // myVar is of string type 
    var myVar = "hello";
    // var is type safe
    // error : type 'int' can't be assigned to a variable of type 'String'
    // myVar = 10;

    // final and constant 
    const myConst = 89;
    // we can not change the value of constant
    // error 
    // myConst = 23
    // we also can not assign runtime value 
    // const myConst2 = DateTime.now().hour;
    // So the soln of the problem is final
    final myFinal = DateTime.now().second; 

    // ch1:
    const myAge = 20;
    int dogs = 0;
    dogs++;

    // ch2:
    int age = 16;

    // ch3:
    // error
    // We cant assign the runtime value to the constant

    // ch4:
    const double rating1 = 2;
    const double rating2 = 3; 
    const double rating3 = 4;

    final avgRating = (rating1 + rating2 + rating3) / 3; 

    // ch5:
    const double a = 1;
    const double b = 2;
    const double c = 4;

    final root1 = (-b + sqrt(pow(b, 2) - 4*a*c )) / 2*a;
    final root2 = (-b - sqrt(pow(b, 2) - 4*a*c )) / 2*a;

    print("$root1 $root2");

    

}
