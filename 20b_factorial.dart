import 'dart:io';


int calcularFactorial(int n) {
  int f = 1;
  for (int c = n; c > 1; c--) {
    f = f * c;
  }
  return f;
}


void main() {
  stdout.writeln('Ingrese un número para calcular su factorial: ');
  int n = int.parse(stdin.readLineSync()!);

  int resultado = calcularFactorial(n);

  stdout.writeln('El factorial de $n es: $resultado');
}
