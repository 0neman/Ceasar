import 'dart:io';
// Converting the charaters of a string to asscii code

List inputUse(String input) {
  int i = 0;
  List<int> number = [];
  if (input == null) {
    return [];
  } else {
    while (i < input.length) {
      number.add(input.codeUnitAt(i));
      i++;
    }
    return number;
  }
}
// Finding the aphabet number

// returning the numbers into characters
String outputUse(List number) {
  String char = '';

  if (number.isEmpty == true) {
    return " ";
  } else {
    var i = 0;
    while (i < number.length) {
      char = char + String.fromCharCode(number[i]);
      i++;
    }
    return char;
  }
}

String encryption(String text, int key) {
  List numberCoresponding = inputUse(text);
  int i = 0;
  while (i < numberCoresponding.length) {
    numberCoresponding[i] = (numberCoresponding[i] + key) % 60000;
    i++;
  }
  text = outputUse(numberCoresponding);
  return text;
}

String decryption(String cypher, int key) {
  List numberCoresponding = inputUse(cypher);
  int i = 0;
  while (i < numberCoresponding.length) {
    numberCoresponding[i] = (numberCoresponding[i] - key) % 60000;
    i++;
  }
  String text = outputUse(numberCoresponding);
  return text;
}

void main() {
  var key;
  stdout.write(
      "what do you entend encryption or decryption? (E for encrypting, D for decrypting) \n");
  var choice = stdin.readLineSync();
  if (choice == 'e' || choice == 'E') {
    stdout.write("What is the key entended to use \n");
    key = stdin.readLineSync();
    key = int.parse(key);
    stdout.write("what is the text entended to cypher \n");
    String text = stdin.readLineSync()!;
    var resultEncryption = encryption(text, key);
    print(resultEncryption);
//
  } else if (choice == 'd' || choice == 'D') {
    stdout.write("What is the key entended to use \n");
    key = stdin.readLineSync();
    key = int.parse(key);
    stdout.write("what is the text entended to Decypher \n");
    String text = stdin.readLineSync()!;
    var resultDecreptyion = decryption(text, key);
    print(resultDecreptyion);
  }
}
