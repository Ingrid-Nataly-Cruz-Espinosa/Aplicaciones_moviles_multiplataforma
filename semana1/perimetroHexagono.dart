import "dart:io";
void main(){
  print("Permentro de hexagono");
  stdout.writeln("Ingrea el lado 1 del hexgono");
  var lado1= stdin.readLineSync();
  double ladouno= double.parse(lado1);

  stdout.writeln("Ingrea el lado2 del hexgono");
  var lado2= stdin.readLineSync();
  double ladodos= double.parse(lado2);

  stdout.writeln("Ingrea el lado 3 del hexgono");
  var lado3= stdin.readLineSync();
  double ladotres= double.parse(lado3);

  stdout.writeln("Ingrea el lado 4 del hexgono");
  var lado4= stdin.readLineSync();
  double ladocuatro= double.parse(lado4);

  stdout.writeln("Ingrea el lado 5 del hexgono");
  var lado5= stdin.readLineSync();
  double ladocinco= double.parse(lado5);

  stdout.writeln("Ingrea el lado 6 del hexgono");
  var lado6= stdin.readLineSync();
  double ladoseis= double.parse(lado6);
  
  var perimetro= (ladouno+ladodos+ladotres+ladocuatro+ladocinco+ladoseis);

  print("El perimetro de hexagono es: $perimetro");
}
