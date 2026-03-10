import 'dart:io';

// ======================
// VARIABLES GLOBALES
// ======================

// Cola de tickets (usando List)
List<int> colaTickets = [];

// Pila de acciones del técnico
List<String> pilaAcciones = [];

// Contador automático de tickets
int contadorTickets = 1;

// ======================
// FUNCIÓN PRINCIPAL
// ======================

void main() {
  int opcion = 0;

  while (opcion != 6) {
    mostrarMenu();
    opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    switch (opcion) {
      case 1:
        agregarTicket();
        break;

      case 2:
        atenderTicket();
        break;

      case 3:
        registrarAccion();
        break;

      case 4:
        deshacerAccion();
        break;

      case 5:
        mostrarEstado();
        break;

      case 6:
        print("Saliendo del sistema...");
        break;

      default:
        print("Opción inválida. Intente nuevamente.");
    }
  }
}

// ======================
// FUNCIONES
// ======================

void mostrarMenu() {
  print("\n===== SISTEMA DE TICKETS =====");
  print("1. Agregar ticket");
  print("2. Atender ticket");
  print("3. Registrar acción del técnico");
  print("4. Deshacer última acción");
  print("5. Mostrar estado del sistema");
  print("6. Salir");
  stdout.write("Seleccione una opción: ");
}

// ----------------------
// COLA (FIFO)
// ----------------------

void agregarTicket() {
  colaTickets.add(contadorTickets); // enqueue
  print("Ticket #$contadorTickets agregado.");
  contadorTickets++;
}

void atenderTicket() {
  if (colaTickets.isEmpty) {
    print("No hay tickets pendientes.");
  } else {
    int ticketAtendido = colaTickets.removeAt(0); // dequeue
    print("Atendiendo ticket #$ticketAtendido");
  }
}

// ----------------------
// PILA (LIFO)
// ----------------------

void registrarAccion() {
  stdout.write("Ingrese la acción realizada: ");
  String accion = stdin.readLineSync() ?? "";

  if (accion.isNotEmpty) {
    pilaAcciones.add(accion); // push
    print("Acción registrada.");
  } else {
    print("Acción vacía, no registrada.");
  }
}

void deshacerAccion() {
  if (pilaAcciones.isEmpty) {
    print("No hay acciones para deshacer.");
  } else {
    String accionEliminada = pilaAcciones.removeLast(); // pop
    print("Se deshizo la acción: $accionEliminada");
  }
}

// ----------------------
// MOSTRAR ESTADO
// ----------------------

void mostrarEstado() {
  print("\n----- ESTADO DEL SISTEMA -----");

  // Mostrar tickets
  if (colaTickets.isEmpty) {
    print("Tickets pendientes: Ninguno");
  } else {
    print("Tickets pendientes:");
    for (int i = 0; i < colaTickets.length; i++) {
      print("Ticket #${colaTickets[i]}");
    }
  }

  // Mostrar acciones
  if (pilaAcciones.isEmpty) {
    print("Acciones registradas: Ninguna");
  } else {
    print("Acciones del técnico (última primero):");
    for (int i = pilaAcciones.length - 1; i >= 0; i--) {
      print("- ${pilaAcciones[i]}");
    }
  }

  print("------------------------------");
}