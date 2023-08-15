import 'dart:io';

void main() {
  // File file = new File('test.csv');
  // file.create();
  // file.writeAsStringSync('Ali, Axmedov, ali@icloud.com\n',
  //     mode: FileMode.append);

  File file = new File('test.csv');
  while (true) {
    String name;
    String surname;
    String email;

    stdout.write('Enter name: ');
    name = stdin.readLineSync()!;
    stdout.write('Enter surname: ');
    surname = stdin.readLineSync()!;
    stdout.write('Enter email: ');
    email = stdin.readLineSync()!;

    file.writeAsStringSync('$name, $surname, $email\n', mode: FileMode.append);
  }
}
