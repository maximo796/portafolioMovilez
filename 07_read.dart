import 'dart:io';

main (){
  stdout.writeln('entre your name:');
  String? name = stdin.readLineSync();
  stdout.writeln('hello $name');
}