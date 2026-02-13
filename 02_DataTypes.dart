main() {
  int a = 10;
  double b = 3.14;
  int? c;
  late int d;
  d = 20;

  print(a);
  print(b);
  print(c);
  print(d);
  print(a + b);

  String nombre = 'tony';
  String apellido = "stark";
  String apellidoRandom = 'O\'Connor';
  String cadenaVacia = ''; 
  String nombreCompleto = '$nombre $apellido';
  String multilenea = '''
  hola mundo
  como estas $nombre $apellido?
  no quiero irme señor $apellido
  ''';

  print(nombre);
  print(apellido);
  print(nombreCompleto);
  print(cadenaVacia);
  print(apellidoRandom);
  print(multilenea);

  bool isActive = true;
  bool isNotActive = !isActive;
  print(isActive);
  print(isNotActive);

  var general = ['lex luthor','red skull','dom',1,true,3.14];
  List<String> villanos = ['lex luthor' ,'red skull' ,'dom'];
  villanos[0] = 'bizarro';
  print(general);
  print(villanos);
  villanos.add('siniestro');
  villanos.add('siniestro');
  villanos.add('siniestro');
  villanos.add('siniestro');
  print(villanos);

  var villanosSet = {'Lex Luthor', 'Red Skull', 'Doom', 1, true, 3.14};
  Set<String> villanosSetString = {'Lex Luthor', 'Red Skull', 'Doom'};
  print(villanosSet);
  print(villanosSetString);
  villanos.add('siniestro');
  villanos.add('siniestro');
  villanos.add('siniestro');
  villanos.add('siniestro');
  print(villanosSetString);

  var villanosSet2 = villanos.toSet();
  print(villanosSet2.toList());

  var ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'edad': 40,
  };

  Map<String, dynamic> WarMachine = {
    'nombre': 'Rhodey Rhoades',
    'poder': 'Tactico y técnologia',
    'edad': '40',
  };

  Map<String, dynamic> capitanAmerica = Map();
  capitanAmerica.addAll({
    'nombre': 'Steve Rogers',
    'poder': 'fuerza, agilidad y resistencia',
    'edad': 107,
  });

  capitanAmerica.addAll(ironman);
  print(ironman);
  print(WarMachine);
  print(ironman['nombre']);
  print(WarMachine['nombre']);
}
