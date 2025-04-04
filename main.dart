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
  h1.setnumberoflegs(1);
  print(h1.getnumberoflegs());
  h1.setnumberodarm(-5);
  print(h1.getnumberofarm());
  h1.walk();
}
