import 'dart:io';

void main() {
  File file = File("students.csv");
  file.writeAsStringSync('Name,Phone\n');
  for (int i = 0; i < 3; i++) {
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter phone of student ${i + 1}: ");
    String? phone = stdin.readLineSync();
    file.writeAsStringSync('$name,$phone\n', mode: FileMode.append);
  }
}
