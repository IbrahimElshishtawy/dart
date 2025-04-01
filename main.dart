import 'dart:io';

void main() {
  // This is a simple calculator app in Dart that performs basic arithmetic operations.
  // my creater app operation math whit dart
  /*  var numberone = 0;
  var numbertwo = 0;
  var operation = 0;
  PrintMathSum( numberone, numbertwo, operation);
  */
  // this is a simple To-do List app in Dart that allows users to add, remove, and mark tasks as completed.
  // my creater app operation todo whit dart

  ToDo_List();
}

void ToDo_List() {
  List<String> task = [];
  while (true) {
    print("/========= To-Do List =========/ \n");
    print("1_ Add Task");
    print("2_ Remove Task");
    print("3_ Mark Task as Completed");
    print("4_ View Tasks");
    print("5_ Exit");
    print("Please enter your choice: ");
    var choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter the task to add: ");
        var taskToAdd = stdin.readLineSync()!;
        task.add(taskToAdd);
        print("Task added successfully!");
        break;
      case 2:
        print("Enter the task number to remove: ");
        var taskNumber = int.parse(stdin.readLineSync()!);
        if (taskNumber > 0 && taskNumber <= task.length) {
          task.removeAt(taskNumber - 1);
          print("Task removed successfully!");
        } else {
          print("Invalid task number!");
        }
        break;
      case 3:
        print("Enter the task number to mark as completed: ");
        var completedTaskNumber = int.parse(stdin.readLineSync()!);
        if (completedTaskNumber > 0 && completedTaskNumber <= task.length) {
          print("Task ${task[completedTaskNumber - 1]} marked as completed!");
          task.removeAt(completedTaskNumber - 1);
        } else {
          print("Invalid task number!");
        }
        break;
      case 4:
        print("Your tasks are: ");
        for (var i = 0; i < task.length; i++) {
          print("${i + 1}. ${task[i]}");
        }
        break;
      case 5:
        exit(0);
      default:
        print("Invalid choice! Please try again.");
    }
  }
}

void PrintMathSum(
  var numberone,
  var numbertwo,
  var operation,
) // this is the main function of the app
{
  print("please enter the frist number: ");
  numberone = int.parse(stdin.readLineSync()!);

  print("please enter your two number: ");
  numbertwo = int.parse(stdin.readLineSync()!);

  print("please enter your operation: ");
  operation = int.parse(stdin.readLineSync()!);

  ChoseOperation(operation, numberone, numbertwo);
}

void ChoseOperation(
  int operation,
  var numberone,
  var numbertwo,
) // this is the main function of the app
{
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
