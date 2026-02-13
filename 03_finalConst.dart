

main(){
  var a =19;
  final double b;
  const double c = 20;
  a = 20;
  b = 20;
  // c = 20

  print(a);
  print(b);
  print(c);
  
  final List<String> personasFinal = ['juan','pedro', 'maria'];
  List<String> personasConst = const['ana','luis','carlos'];
  personasFinal.add('maria');

  print(personasFinal);
  print(personasConst);
}