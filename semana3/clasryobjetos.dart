import "dart:io";
List vasia = [];
void main(){ 
  final objeto=new sensores();
  objeto.insertar();
  objeto.mostrar();
}

class sensores{
  void insertar(){
    print("Dime cuantos datos quieres almacenar");
    var almacenar= stdin.readLineSync();
    int almacenados = int.parse(almacenar);
    for(int i=0; i < almacenados; i++){
      print("Dame el id_sensor");
      var idSensor = stdin.readLineSync();
      print("Dame el valor");
      var valor = stdin.readLineSync();
      print("Dame la fecha");
      var fechas = stdin.readLineSync();
      Map < dynamic,dynamic>
      guarda ={
        "id_Sensor": idSensor,
        "valor": valor,
        "fecha": fechas
      };

      vasia.add(guarda);

    }
  }  

  void mostrar(){
    print("Los datos son: $vasia");
  }  

}