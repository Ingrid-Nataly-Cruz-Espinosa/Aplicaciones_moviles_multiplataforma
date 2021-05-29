import "dart:io";
void main(){
  print("Permentro de hexagono");
  stdout.writeln("Ingresa el lado 1 del hexagono");
  var lado1= stdin.readLineSync();
  double ladouno= double.parse(lado1);

  stdout.writeln("Ingresa el lado2 del hexagono");
  var lado2= stdin.readLineSync();
  double ladodos= double.parse(lado2);

  stdout.writeln("Ingresa el lado 3 del hexagono");
  var lado3= stdin.readLineSync();
  double ladotres= double.parse(lado3);

  stdout.writeln("Ingresa el lado 4 del hexagono");
  var lado4= stdin.readLineSync();
  double ladocuatro= double.parse(lado4);

  stdout.writeln("Ingresa el lado 5 del hexagono");
  var lado5= stdin.readLineSync();
  double ladocinco= double.parse(lado5);

  stdout.writeln("Ingresa el lado 6 del hexagono");
  var lado6= stdin.readLineSync();
  double ladoseis= double.parse(lado6);
  
  var perimetro= (ladouno+ladodos+ladotres+ladocuatro+ladocinco+ladoseis);

  print("El perimetro de hexagono es: $perimetro");
}
