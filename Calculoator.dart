import 'dart:io';

void print_calculator() {
  // this is a simple calculator app in Dart that allows users to perform basic arithmetic operations.
  // my creater app operation math whit dart
  var numberone = 0, numbertwo = 0, operation = 0;
  print("please enter the frist number: ");
  numberone = int.parse(stdin.readLineSync()!);

  print("please enter your two number: ");
  numbertwo = int.parse(stdin.readLineSync()!);

  print("please enter your operation: ");
  operation = int.parse(stdin.readLineSync()!);

  ChoseOperation(operation, numberone, numbertwo);
}

void ChoseOperation(int operation, var numberone, var numbertwo) {
  switch (operation) {
    case 1:
      print("addition");
      exponentiation(numberone, numbertwo, operation);
      break;
    case 2:
      print("subtraction");
      exponentiation(numberone, numbertwo, operation);
      break;
    case 3:
      print("multiplication");
      exponentiation(numberone, numbertwo, operation);
      break;
    case 4:
      print("division");
      exponentiation(numberone, numbertwo, operation);
      break;
    case 5:
      print("modulus");
      exponentiation(numberone, numbertwo, operation);
      break;
    case 6:
      print("exponentiation");
      exponentiation(numberone, numbertwo, operation);
      break;
    default:
      print("invalid operation");
      break;
  }
}

void exponentiation(
  numberone,
  numbertwo,
  operation,
) // this is the exponentiation operation
{
  switch (operation) {
    case 1:
      var result = numberone ^ numbertwo;
      print("the result of exponentiation is: $result");
      break;
    case 2:
      var result = numberone + numbertwo;
      print("the result of addition is: $result");
      break;
    case 3:
      var result = numberone - numbertwo;
      print("the result of subtraction is: $result");
      break;
    case 4:
      var result = numberone / numbertwo;
      print("the result of division is: $result");
      break;
    case 5:
      var result = numberone % numbertwo;
      print("the result of modulus is: $result");
      break;
    case 6:
      var result = numberone * numbertwo;
      print("the result of multiplication is: $result");
      break;
    default:
      print("error chose the operation : ");
  }
}
