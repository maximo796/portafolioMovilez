import 'dart:io';

// Función recursiva para calcular el factorial
int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1; // Caso base
  } else {
    return n * factorial(n - 1); // Llamada recursiva
  }
}

void main() {
  stdout.write("Ingresa un numero: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print("Error: El factorial no está definido para números negativos.");
  } else {
    print("El factorial de $numero es: ${factorial(numero)}");
  }
}