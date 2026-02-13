import 'dart:io';

main() {
  int n = 0;
  stdout.writeln("dame el numero de la tabla de multiplicar: ");
  n = int.parse(stdin.readLineSync()!);
  for (int c = 0; c < 10; c++) {
    int r = 0;
    r = n * c;
    stdout.writeln('$n x $c = $r \n');
  }
}
