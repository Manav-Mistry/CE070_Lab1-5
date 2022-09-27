import 'package:lab2_3/lab2_3.dart' as lab2_3;

void main(List<String> arguments) {
  // operator with mix type
    //  ans of a1 + b1 is of type double 
    const a1 = 19.5;
    const b1 = 10;

    // error
    // const c = a + b;

    // So the soln is to use final keyword, which works at runtime
    final c1 = a1 + b1;



    // type checking at runtime
    num myNum = 23234;
    print(myNum is int); // true

    // second way
    print(myNum.runtimeType); // int

    // we can not do type conversion like below
    var n1 = 90;
    var n2 = 2.2;
    // error
    // n1 = n2;

    // we can convert to double to int like below
    n1 = n2.toInt();

    // ensuring type
    final actuallyDouble = (12).toDouble(); 

    //Down casting:
    num someNum = 100;

    final someInt = someNum as int;


    //String:
    // we can use either "" or ''
    var msg1 = "Hello";
    var msg2 = ' world';

    //concate:
    var msg = msg1 + msg2;
    print(msg);

    //StringBuffer:
    // we can also use string buffer instead of use += operator evry time 

    final strbuffer = StringBuffer();

    strbuffer.write("Hello");
    strbuffer.write(" my name is");
    strbuffer.write(" manav");

    //Interpolation:
    const name = "steve";
    const grettings = "Happy birthday $name";

    //fix the size of the input
    const x = 1/3;
    print(x);
    // above will print 0.333333333333
    // so to fix the number of output we can use toStringAsFixed

    print(x.toStringAsFixed(3)); // 0.333

    // multiline string
    const multiline_string = """
      this is
      multiline 
      string
    """;
    print(multiline_string);
    // output of above will be as it is it looks like
    // all the position of chars and new line char is as it is

    // but if we want to have output which ignores new line char then
    const singleLine = "It is"
      " a lab of "
      " SDP";
      // output: It is a lab of SDP

    // ignore special chars
    const ignoreSpecial =  r"Hello \n world";
    // output:  Hello \n world

    // min exercises
    // 1.
    const String my_Name = "Manav";

    // any type is allowed
    // using Object?
    Object? anyType = 345;
    anyType = "string"; 

    // ch1:
    int grad = (0.20*90 + 0.30*80 + 0.50*94).toInt();
   
    // ch2:
    // const is immutable

    // ch3:
    // int

    // ch6
    // summary = 10 * 5 = 50
}
