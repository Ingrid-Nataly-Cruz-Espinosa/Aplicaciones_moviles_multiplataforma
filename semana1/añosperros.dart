import "dart:io";
void main(){
  print("Años perros");
  stdout.writeln("Ingresa tu edad ");
  var edad= stdin.readLineSync();
  int edades= int.parse(edad);

  var perruno= (7*edades);

  print("La edad de tu perro en años tuyos es de : $perruno");
}