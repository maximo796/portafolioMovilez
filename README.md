# repositorio moviles  
## ITIID-4 
## °20 Maximo santiago romero _Móviles 

# explicacion de programas:

- `01_holamundo.dart`  
  Muestra un mensaje de saludo en la terminal.

- `02_dataTypes.dart`  
  Explora los diferentes tipos de datos disponibles: números enteros, decimales, texto, valores booleanos, colecciones y diccionarios.

- `03_finalConst.dart`  
  Ilustra las diferencias entre variables inmutables declaradas con `final` y constantes de tiempo de compilación con `const`.

- `04_comments.dart`  
  Muestra los diferentes estilos de anotaciones en código: de una línea, de múltiples líneas y documentación.

- `05_mathOperators.dart`  
  Implementa operaciones aritméticas básicas y avanzadas.

- `06_operators.dart`  
  Demuestra el uso de operadores de asignación compuestos y el operador de coalescencia nula.

- `07_read.dart`  
  Captura información ingresada por el usuario a través de la entrada estándar.

- `08_helloName.dart`  
  Solicita el nombre del usuario y genera un saludo personalizado.

- `09_sum.dart`  
  Realiza la adición de dos valores numéricos proporcionados por el usuario.

- `10_concat.dart`  
  Demuestra técnicas para unir cadenas de texto y embeber variables dentro de strings.

- `11_ifBasic.dart`  
  Implementa toma de decisiones mediante estructuras condicionales básicas.

- `12_Nested.dart`  
  Utiliza condicionales anidados para evaluar múltiples condiciones relacionadas.

- `13_menus.dart`  
  Presenta un sistema de opciones interactivo para realizar cálculos geométricos de áreas y volúmenes.

- `14_tablaMult.dart`  
  Crea y despliega tablas de multiplicación utilizando estructuras de repetición.

- `15_calif.dart`  
  Traduce calificaciones entre el sistema de evaluación estadounidense y mexicano.

- `16_sumas.dart`  
  Acumula progresivamente valores numéricos hasta recibir una señal de terminación.

- `17_labels.dart`  
  Ilustra el control de flujo en ciclos mediante instrucciones de salto y continuación.

- `18a_functions.dart`  
  Introduce la creación y llamado de funciones reutilizables.

- `18b_functions.dart`  
  Construye tablas de multiplicación mediante funciones parametrizadas.

- `19_primos.dart`  
  Determina si un número dado cumple con las características de un número primo.

- `20a_factorial.dart`  
  Determina el factorial de un número.

- `20b_factorial.dart`  
  Determina el factorial de un número llamándolo desde una función.

- `20c_factorial.dart` 
  el código pide un número, calcula su factorial de forma recursiva y muestra el resultado.

- `21recursividad`
  este código calcula el factorial de un número ingresado por el usuario, pero además protege contra entradas inválidas (números negativos).

- `22_stacks`
  este código implementa una pila dinámica (estructura LIFO: Last In, First Out) en Dart, con operaciones de push (insertar), pop (sacar) y mostrar.

- `23_queue`
  este programa implementa una cola dinámica en Dart con operaciones de insertar (push), borrar (pop) y mostrar.

- `24_try_catch`
  este código calcula el factorial de manera iterativa y además es más robusto porque maneja entradas inválidas y números negativos con excepciones.

- `25_Gestion`
  este código es un mini sistema de gestión de tickets que usa una cola para los tickets y una pila para las acciones del técnico, mostrando cómo se aplican estas estructuras de datos en un escenario práctico.

  # investigacion 1:
  # ¿Qué es Markdown?

Markdown es un lenguaje de texto creado en 2004 por John Gruber. Sirve para dar formato rápido y fácil a documentos, y se convierte en HTML sin complicaciones.  

## Dónde se usa
- GitHub  
- Documentación  
- Archivos README  
- Blogs, foros y apps como Notion o Discord  

## Lo básico
- **Encabezados:** `#`, `##`, `###`  
- **Negrita:** `**texto**`  
- **Itálica:** `*texto*`  
- **Listas:** `- Elemento` o `1. Elemento`  
- **Enlaces:** `(https://www.google.com)`  
- **Imágenes:** `(imagen.jpg)`  
- **Código:** `` `print("Hola")` `` o bloques con ```python  
- **Citas:** `> Esto es una cita`  
- **Tablas:**  
  ```markdown
  | Nombre | Edad |
  |--------|------|
  | Juan   | 20   |
  | Ana    | 22   |

  # investigacion 2:
# Funcionamiento de las ramas en Git

Una rama en Git es una línea de desarrollo independiente dentro de un proyecto. Sirve para trabajar en nuevas funciones, correcciones o pruebas sin afectar el código principal. Las ramas principales suelen llamarse **main** o **master**.

Las ramas permiten:
- Desarrollar nuevas funcionalidades  
- Corregir errores  
- Probar ideas sin riesgo  
- Facilitar el trabajo en equipo  

El funcionamiento básico es:
1. El proyecto comienza en la rama `main`.  
2. Se crea una nueva rama a partir de `main`.  
3. Se hacen cambios y commits en esa rama.  
4. Cuando el trabajo está listo, se une (merge) a `main`.  
5. La rama se puede eliminar si ya no se necesita.  

### Comandos básicos
- Ver ramas existentes:  
  ```bash
  git branch

- Crear una nueva rama:
  ```bash
  git branch nombre-rama

- Cambiar a una rama:
  ```bash
  git checkout nombre-rama

- Crear y cambiar a una rama al mismo tiempo:
  ```bash
   git checkout -b nombre-rama

- Guardar cambios en la rama:
  ```bash
   git add .
   git commit -m "Mensaje del commit"

- Unir ramas (merge):
  ```bash
   git checkout main
   git merge nombre-rama


