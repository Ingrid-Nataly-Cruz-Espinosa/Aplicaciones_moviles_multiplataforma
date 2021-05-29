import "dart:io";
List info = [];
void main(){
var verdadero == "si"
  print("Elige una de las 4 opciones escribe 1 al 4\n 1)Mostrar todos los datos.\n 2)Insertar un nuevo registro\n 3)Modificar un registro\n 4)Borrar un registro." );
  var eleccion= stdin.readLineSync();

  if(eleccion == "1"){
    uno();
  }
  if(eleccion == "2"){
    dos();
  }
  if(eleccion == "3"){
    tres();
  } 
  if(eleccion == "4"){
    cuatro();
  } 
}

void uno(){
  print("Los datos son ");
  print(info);
}
void dos(){
  print("Escribe el nombre de la persona: ");
  var nombre= stdin.readLineSync();
  print("Ingresa Numero de telefono: ");
  var telefono= stdin.readLineSync();
  print("Ingrese el email: ");
  var email= stdin.readLineSync();

  Map < dynamic,dynamic> almacen ={
    "nombre": nombre,
    "telefono": telefono,
    "email": email
  };

  info.add(almacen);

}
void tres(){
}
void cuatro(){
}
