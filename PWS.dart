import 'dart:io';
import 'dart:math';

void printPWS() {
  //this create programme sugget random keyworld
  int length = readPositiveIntegerInput(
    "Please enter your number for keyball: ",
  );
  List<String> randomWorld = GenerateRandomWorld(length);
  print("The random world is: ${randomWorld.join()}");
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
