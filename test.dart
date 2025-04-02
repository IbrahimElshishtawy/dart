import 'dart:math';
import 'dart:io';

void ToDo_List() {
  List<String> task = [];
  while (true) {
    print("/============ To-Do List ============/");
    print(
      "1-Add Task \n 2-Remove Task \n 3- Mark Task as compleled \n 4-View Tasks \n 5-Exit",
    );
    print("please Enter your choice: ");
    var choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter the task Add : \n");
        var TaskToAdd = int.parse(stdin.readLineSync()!);
        task.add(TaskToAdd as String);
        print("Task added success");
        break;
      case 2:
        print("enter the task number Remove: ");
        var tasknumber = int.parse(stdin.readLineSync()!);
        if (tasknumber > 0 && tasknumber <= task.length) {
          task.remove(tasknumber - 1);
          print("Task removed success!!");
        } else {
          print("Error : please Enter your number : ");
        }
        break;
      case 3:
        print("Enter your task number to mark as completed : ");
        var comleteetasknumber = int.parse(stdin.readLineSync()!);
        if (comleteetasknumber > 0 && comleteetasknumber <= task.length) {
          print("Task ${task[comleteetasknumber - 1]} mark as completed ");
          task.removeAt(comleteetasknumber - 1);
        } else {
          print("error : chose the operation : ");
        }
        break;
      case 4:
        print("your task are is : ");
        for (var i = 0; i < task.length; i++) {
          print("${1 + i} ${task[i]}");
        }
        break;
      case 5:
        exit(0);
      default:
        print("error choice : please enter your number try again");
    }
  }
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

int readPositiveIntegerInput(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    int? value = int.tryParse(input!);
    if (value != null && value > 0) {
      return value;
    } else {
      print("Invalid input. Please enter a positive integer greater than 0.");
    }
  }
}

List<String> GenerateRandomWorld(int length) {
  const String letter =
      "ZXCVBNMASDFGHJKLQWERTYUIOP!@#%^&*()zxcvbnmasdfghjkqwertyuiop";
  Random random = Random();

  return List.generate(
    length,
    (index) => letter[random.nextInt(letter.length)],
  );
}
