/*
import 'Calculoator.dart';
import 'PWS.dart';
import 'ToDo_list.dart';
import 'OOP.dart';
*/

void main() {
  /* 
 print_calculator();
 print_To_Do_List();
 printPWS();

  human h1 = human(
    name: "hima",
    email: "shishtawyhima@gmail.com",
    phone: "01012472095",
    height: 20,
    weight: 1.80,
  );
  h1.numberofarm = 2;
  h1.numberoflegs = 2;
  print("number of arm is ${h1.numberofarm}");
  print("number of legs is ${h1.numberoflegs}");
  h1.walk();
 */
  List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  try {
    print(number[10]);
  }
  // ex is the exception that is thrown when an error occurs
  // it is a built-in class in dart that is used to handle exceptions
  catch (ex) {
    print("the error is $ex");
  }
}
