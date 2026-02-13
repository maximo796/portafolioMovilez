import 'dart:io';
 main(){
  stdout.write('ingre el primer numero :');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('ingresa el segundo numero:');
  double b = double.parse(stdin.readLineSync()!);

  if( a > b){
    print('el numero mayor es $a');

  }else if (b > a ){
    print('el numero mayor es $b');

  }else{
    print('los numeros son iguales');
  }
 }