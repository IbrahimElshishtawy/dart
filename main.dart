/*
import 'Calculoator.dart';
import 'PWS.dart';
import 'ToDo_list.dart';
*/

import 'OOP.dart';

void main() {
  /* 
 print_calculator();
 print_To_Do_List();
 printPWS();
 */

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
}
