import 'dart:io';
void main() {
  File file = File('test.csv');
  String contents = file.readAsStringSync();
  List<String> lines = contents.split("\n");
  print(lines);

  for (var l in lines) {
    print(l);
  }



  // var a = ['banana', 'mango'];
  // 1-usul
  // for (var meva in a) {
  //   print(meva);
  // }

  //2-usul
  // int i;
  // for (i = 0; i < a.length; i++) {
  //   print(a[i]);
  // }
}
