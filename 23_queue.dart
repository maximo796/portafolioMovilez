import 'dart:io';

class Nodo {
  int dato;
  Nodo? siguiente;

  Nodo(this.dato);
}

// Clase para devolver front y back en push
class ColaResult {
  Nodo? front;
  Nodo? back;
  ColaResult(this.front, this.back);
}

// Clase para devolver front y valor en lollipop
class LollipopResult {
  Nodo? front;
  int? valor;
  LollipopResult(this.front, this.valor);
}

ColaResult push(Nodo? front, Nodo? back, int dato) {
  Nodo nuevoNodo = Nodo(dato);
  if (back != null) {
    back.siguiente = nuevoNodo;
  }
  back = nuevoNodo;
  front ??= nuevoNodo;
  print('\nElemento $dato agregado a la cola');
  return ColaResult(front, back);
}

LollipopResult lollipop(Nodo? front) {
  if (front == null) return LollipopResult(null, null);
  int n = front.dato;
  front = front.siguiente;
  return LollipopResult(front, n);
}

Nodo? show(Nodo? front) {
  Nodo? aux = front;
  if (aux == null) {
    print('\nLa cola está vacía');
    return front;
  }
  print('\nElementos en la cola:');
  while (aux != null) {
    print(aux.dato);
    aux = aux.siguiente;
  }
  return front;
}

Nodo? borrar(Nodo? front) {
  var result = lollipop(front);
  front = result.front;
  if (result.valor != null) {
    print('\nEl elemento ${result.valor} fue sacado de la cola');
  } else {
    print('\nLa cola está vacía, no se puede borrar');
  }
  return front;
}

void main() {
  Nodo? back;
  Nodo? front;
  int u;

  do {
    stdout.writeln('Ingrese el size de la cola: ');
    u = int.parse(stdin.readLineSync()!);
  } while (u <= 0);

  for (int i = 0; i < u; i++) {
    stdout.writeln('\nIngrese el elemento de la cola ${i + 1}');
    int n = int.parse(stdin.readLineSync()!);
    var result = push(front, back, n);
    front = result.front;
    back = result.back;
  }

  show(front);
  front = borrar(front);
  show(front);
}
