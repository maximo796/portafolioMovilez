import 'dart:io';
import 'dart:math';

void main() {
  int opcionPrincipal = 0;

  do {
    print('\n=== MENÚ PRINCIPAL ===');
    print('1. Calcular Área');
    print('2. Calcular Volumen');
    print('3. Salir');
    stdout.write('Seleccione una opción: ');
    opcionPrincipal = int.parse(stdin.readLineSync()!);

    switch (opcionPrincipal) {
      case 1:
        menuArea();
        break;
      case 2:
        menuVolumen();
        break;
      case 3:
        print('Saliendo del programa...');
        break;
      default:
        print('Opción no válida');
    }
  } while (opcionPrincipal != 3);
}

// ---------- MENÚ DE ÁREAS ----------
void menuArea() {
  print('\n--- MENÚ DE ÁREAS ---');
  print('1. Círculo');
  print('2. Triángulo');
  print('3. Rectángulo');
  stdout.write('Seleccione una opción: ');
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      stdout.write('Ingrese el radio: ');
      double r = double.parse(stdin.readLineSync()!);
      double area = pi * r * r;
      print('Área del círculo: $area');
      break;

    case 2:
      stdout.write('Ingrese la base: ');
      double b = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura: ');
      double h = double.parse(stdin.readLineSync()!);
      double area = (b * h) / 2;
      print('Área del triángulo: $area');
      break;

    case 3:
      stdout.write('Ingrese la base: ');
      double b = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura: ');
      double h = double.parse(stdin.readLineSync()!);
      double area = b * h;
      print('Área del rectángulo: $area');
      break;

    default:
      print('Opción no válida');
  }
}

// ---------- MENÚ DE VOLÚMENES ----------
void menuVolumen() {
  print('\n--- MENÚ DE VOLÚMENES ---');
  print('1. Esfera');
  print('2. Pirámide');
  print('3. Cubo');
  stdout.write('Seleccione una opción: ');
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      stdout.write('Ingrese el radio: ');
      double r = double.parse(stdin.readLineSync()!);
      double volumen = (4 / 3) * pi * pow(r, 3);
      print('Volumen de la esfera: $volumen');
      break;

    case 2:
      stdout.write('Ingrese el área de la base: ');
      double ab = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura: ');
      double h = double.parse(stdin.readLineSync()!);
      double volumen = (ab * h) / 3;
      print('Volumen de la pirámide: $volumen');
      break;

    case 3:
      stdout.write('Ingrese el lado: ');
      double l = double.parse(stdin.readLineSync()!);
      double volumen = pow(l, 3).toDouble();
      print('Volumen del cubo: $volumen');
      break;

    default:
      print('Opción no válida');
  }
}