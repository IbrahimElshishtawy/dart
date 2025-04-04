import 'dart:io';

void print_To_Do_List() {
  //this is a simple To-do List app in Dart that allows users to add, remove, and mark tasks as completed.
  ToDo_List();
}

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
