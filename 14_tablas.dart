import 'dart:io';

main (){
  double a;
  int? b;
  while( b != 0 ){
    print('programa de multiplicaciones');
    stdout.write('ingresa el numero');
    a = double.parse(stdin.readLineSync()!);
    for(int i = 1; i < 51; i++){
      double res = a*i;
      print('$a * $i es igual $res');
    }
    stdout.write('si desea que el programa termine ingrese "0"\n');
    b = int.parse(stdin.readLineSync()!);
  }
}