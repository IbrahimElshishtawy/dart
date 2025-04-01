// This is a simple calculator app in Dart that performs basic arithmetic operations.
import 'dart:io';

void main() {
  // my creater app operation math whit dart
  var numberone = 0;
  var numbertwo = 0;
  var operation = 0;

  print("please enter the frist number: ");
  numberone = int.parse(stdin.readLineSync()!);

  print("please enter your two number: ");
  numbertwo = int.parse(stdin.readLineSync()!);

  print("please enter your operation: ");
  operation = int.parse(stdin.readLineSync()!);

  ChoseOperation(operation, numberone, numbertwo);
  // this is the main function of the app
}

void ChoseOperation(int operation, var numberone, var numbertwo) {
  switch (operation) {
    case 1:
      print("addition");
      addition(numberone, numbertwo);
      break;
    case 2:
      print("subtraction");
      subtraction(numberone, numbertwo);
      break;
    case 3:
      print("multiplication");
      multiplication(numberone, numbertwo);
      break;
    case 4:
      print("division");
      division(numberone, numbertwo);
      break;
    case 5:
      print("modulus");
      modulus(numberone, numbertwo);
      break;
    case 6:
      print("exponentiation");
      exponentiation(numberone, numbertwo);
      break;
    default:
      print("invalid operation");
      break;
  }
}

void exponentiation(
  numberone,
  numbertwo,
) // this is the exponentiation operation
{
  var result = numberone ^ numbertwo;
  print("the result of exponentiation is: $result");
}

void addition(int numberone, int numbertwo) // this is the addition operation
{
  var result = numberone + numbertwo;
  print("the result of addition is: $result");
}

void subtraction(
  int numberone,
  int numbertwo,
) // this is the subtraction operation
{
  var result = numberone - numbertwo;
  print("the result of subtraction is: $result");
}

void multiplication(
  int numberone,
  int numbertwo,
) // this is the multiplication operation
{
  var result = numberone * numbertwo;
  print("the result of multiplication is: $result");
}

void division(int numberone, int numbertwo) // this is the division operation
{
  var result = numberone / numbertwo;
  print("the result of division is: $result");
}

void modulus(int numberone, int numbertwo) // this is the modulus operation
{
  var result = numberone % numbertwo;
  print("the result of modulus is: $result");
}
