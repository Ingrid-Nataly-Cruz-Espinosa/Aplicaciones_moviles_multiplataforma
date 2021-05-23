import "dart:io";
void main(){
  print("Area de Trinagulo");
  stdout.writeln("Ingrea la base del triangulo");
  var lado1= stdin.readLineSync();
  double base= double.parse(lado1);

  stdout.writeln("Ingrese la altura");
  var lado2= stdin.readLineSync();
  double altura= double.parse(lado2);

  var area= (base*altura)/2;

  print("El area del triangulo es : $area");
}