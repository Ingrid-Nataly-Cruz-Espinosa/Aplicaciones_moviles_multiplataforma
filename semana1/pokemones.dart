import "dart:io";
void main(){
  print("Pokemones");
  stdout.writeln("Ingrese base del rectangulo");
  var lado1= stdin.readLineSync();
  double base= double.parse(lado1);

  stdout.writeln("Ingrese la altura");
  var lado2= stdin.readLineSync();
  double altura= double.parse(lado2);

  var area= (base*altura);

  var pokemoness= (30);

  var pokemones= (area/pokemoness);



  print("El numero de pokemones que caben en el rectangulo es  : $pokemones");
}