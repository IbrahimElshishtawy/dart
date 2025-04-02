import 'dart:io';
import 'test.dart';

void main() {
  // my creater app operation math whit dart
  var numberone = 0, numbertwo = 0, operation = 0;
  print("please enter the frist number: ");
  numberone = int.parse(stdin.readLineSync()!);

  print("please enter your two number: ");
  numbertwo = int.parse(stdin.readLineSync()!);

  print("please enter your operation: ");
  operation = int.parse(stdin.readLineSync()!);

  ChoseOperation(operation, numberone, numbertwo);
  //this is a simple To-do List app in Dart that allows users to add, remove, and mark tasks as completed.
  //ToDo_List();
  //this create programme sugget random keyworld
  int length = readPositiveIntegerInput(
    "Please enter your number for keyball: ",
  );
  List<String> randomWorld = GenerateRandomWorld(length);
  print("The random world is: ${randomWorld.join()}");
}
