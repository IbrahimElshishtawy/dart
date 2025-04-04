/*
import 'Calculoator.dart';
import 'PWS.dart';
import 'ToDo_list.dart';
*/
import 'OOP.dart';

void main() {
  human h1 = human(
    name: "hima",
    email: "shishtawyhima@gmail.com",
    phone: "01012472095",
    height: 20,
    weight: 1.80,
  );
  try {
    h1.numberofarm = 3;
    h1.numberoflegs = 5;
  } catch (e) {
    h1.numberofarm = 2;
    h1.numberoflegs = 2;
    print(e);
  }
  print("number of arm is ${h1.numberofarm}");
  print("number of legs is ${h1.numberoflegs}");
  h1.walk();
  animal a1 = animal("dog");
  a1.eat();
  dog d1 = dog("dog");
  d1.eat();
}
