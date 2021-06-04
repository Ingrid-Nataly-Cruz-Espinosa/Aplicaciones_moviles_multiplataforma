import "dart:io";
List info = []; // se crea una lista vasia
void main(){ //metodo inical
  var verdad = "si"; //Variable para el siclo while
  while (verdad == "si"){ //Ciclo while  

    print("Elige una de las 4 opciones escribe 1 al 4\n 1)Mostrar todos los datos.\n 2)Insertar un nuevo registro\n 3)Modificar un registro\n 4)Borrar un registro." );
    var eleccion= stdin.readLineSync(); //declaramos la variable para hacer el menu

    if(eleccion == "1"){ // si la elecciones 1 has lo de uno
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
    print("¿Quieres elegir otra opcion?"); 
    verdad = stdin.readLineSync(); //Guarda la varible que dice que se quiere elegir otra opcion
  }  
}

void uno(){ //metodo para la opcion 1
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
  uno();
  print("Inserte el nombre a modificar");
  var nombre= stdin.readLineSync();
  for(int i=0; i < info.length; i++){
      var nuevo = new Map();
      nuevo = info[i];

    if (nombre == nuevo['nombre']){
      print("Ingresa el nombre nuevo: ");
      var nuevonombre = stdin.readLineSync();
      print("Ingresa el nuevo numero: ");
      var nuevonumero = stdin.readLineSync();
      print("Ingresa el nuevo email: ");
      var nuevoemail = stdin.readLineSync();
      nuevo["nombre"]=nuevonombre;
      nuevo["telefono"]=nuevonumero;
      nuevo["email"]=nuevoemail;
      info[i]=nuevo;
      print(info);
    }

  }
}
void cuatro(){
  uno();
  print("Ingrese el nombre a eliminar: ");
  var elnombre= stdin.readLineSync();
  for(int i=0; i < info.length; i++){
    var mapeliminar = new Map();
    mapeliminar = info[i];

    if (elnombre == mapeliminar["nombre"]){
      info.removeAt(i);
      print(info);
    }  
  }  
}
  
