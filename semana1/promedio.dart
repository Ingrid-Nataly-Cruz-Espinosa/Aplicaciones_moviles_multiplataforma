import "dart:io";
void main(){
  print("Promedio");
  stdout.writeln("Primero evaluacion");
  var cal1= stdin.readLineSync();
  double unidad1= double.parse(cal1);
  var unidaduno= (0.2*unidad1);

  stdout.writeln("Segunda evaluacion");
  var cal2= stdin.readLineSync();
  double unidad2= double.parse(cal2);
  var unidaddos= (0.3*unidad2);

  stdout.writeln("Tercera evaluacion");
  var cal3= stdin.readLineSync();
  double unidad3= double.parse(cal3);
  var unidadtres= (0.5*unidad2);

  var promedio= (unidaduno+unidaddos+unidadtres);

  print("Tu promedio es : $promedio");
}