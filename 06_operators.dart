main(){
  int a = 10;
  int? b;
  b ??=20;
  print(a);

  int c = (a > b) ? a : b ;
  print(c);
  int d = 23;
  String response = (d > 25) ? 'd is than 25' : 'd is not greater than 25';
  print(response);
}