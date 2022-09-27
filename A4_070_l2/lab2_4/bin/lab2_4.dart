import 'package:lab2_4/lab2_4.dart' as lab2_4;

void main(List<String> arguments) {
  // Data types in dart
  // bool int double string
  
  // bool datatype
  const bool yes = true;
  const bool no = false;
  
  // boolean operators
  const doesOneEqualTwo = (1==2);
  // here, the value will be false
  const doesOneNotEqualTwo = (1!=2);
  // here, the value will be true
  // which is same as
  // !(1==2)
  
  // Greater than and less than
  const isOneGreaterThanTwo = (1>2);
  // false
  const isOneLessThanThree = (1<3);
  // true
  const isTwoLessThanEqualToTwo = (1<=2);
  // true
  
  // Boolean logic
  // And operator = &&
  const isSunny = true;
  const isCycleRepaired = true;
  const canGoCycling = isSunny && isCycleRepaired;
  // true
  const wantToGo = false;
  const willGoCycling = canGoCycling && wantToGo;
  // false
  
  // Or operator = ||
  const isMomShouting = true;
  const hasGoneCycling = isMomShouting || willGoCycling;
  // true
  
  // Boolean logic and operators
  // they can be used in combination
  const andTrue = 1<2 && 4>3;
  
  // The precedence of operators 
  // The higher the operator, more the precendence
  // !
  // >= > <= <
  // == !=
  // &&
  // ||
  
  // So an expression like
  // true && false || true
  // will evaluate to
  // false || true
  // true
  
  // However, this precedence can be overriden 
  // by using parantheses
  // true && (false || (true && false))
  // true && (false || false)
  // true && false
  // false
  
  // Equality operator = ==
  const guess = "pigeon";
  const bird = guess == "dog";
  // bird = false
  
  // Mini exercise 1
  const myAge = 19;
  const isTeenager = (myAge <= 19 && myAge >= 13);
  // Mini exercise 2
  const maryAge = 30;
  const bothTeenager = (isTeenager && (maryAge>=13 && maryAge<=19));
  // Mini exercise 3
  const reader = "Manav";
  const ray = "Ray Wenderlich";
  const rayIsReader = ray==reader;
  
  // Now we can use the knowledge of boolean logic in if statements
  const pet = "cat";
  const rarePet = "lion";
  if(pet == rarePet){
    print("You have a rare pet");
  }
  else{
    print("You don't have a rare pet");
  }
  
  // if you have more than 1 condition, 
  // you can write it in else if(condition) 
  // above else
  
  // Scopes in dart
  // variables written outside main are global
  // variables written inside functions and main are local
  // variables written inside if statements are of insideif scope
  
  // Ternary operator
  const marks = 56;
  const pass = (marks>33)?true:false;
  
  // Mini exercises
  // 1.
  // const myAge = 19; (initialized above)
  const answer = (myAge >= 13 && myAge <= 19)?"Teenager":"Not a teenager";
  
  // Switch statement
  const num = 1;
  switch(num){
    case 0: 
      print("zero");
      break;
    case 1:
      print("one");
      break;
    default:
      print("Not binary");
  }
  // switch statements are for strictly equal condition
  // it doesn't support range checks
  // switch can also be used with strings
  
  // Enumerated types 
  // Used when you want to give the user a limited set of options
  /* enum Weather {
    sunny,
    snowy,
    cloudy,
    rainy,
  } */
  // Place this enumeration outside
  // main function
  
  // To assign enums to variables
  // const weatherToday = Weather.snowy;
  
  // Printing enums
  // print(weatherToday)
  // output : Weather.cloudy
  
  // Mini exercises
  // 1.
  /* enum AudioState(
   * playing,
   * paused,
   * stopped,
  ) */
  // const audioState = AudioState.paused;
  
  /* 
   swtich(audioState){
      case AudioState.playing:
        print("Playing audio");
        break;
      case AudioState.paused:
        print("Paused");
        break;
      case AudioState.stopped:
         print("Stopped");
         break;
   } 
   */
}
