import 'dart:io';

void main() {

  Map<String, double> pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };

 
  double obtenerDescuento(double notaPromedio) {
    if (notaPromedio >= 18 && notaPromedio <= 20) {
      return 0.15;
    } else if (notaPromedio >= 16 && notaPromedio < 18) {
      return 0.12;
    } else if (notaPromedio >= 14 && notaPromedio < 16) {
      return 0.10;
    } else {
      return 0.0;
    }
  }


  print('Ingrese la categoría del estudiante (A, B, C, D): ');
  String? categoria = stdin.readLineSync()?.toUpperCase();


  if (!pensiones.containsKey(categoria)) {
    print('Categoría inválida.');
    return;
  }


  print('Ingrese el promedio ponderado del estudiante: ');
  double? notaPromedio = double.tryParse(stdin.readLineSync()!);

  if (notaPromedio == null || notaPromedio < 0 || notaPromedio > 20) {
    print('Promedio inválido.');
    return;
  }


  double pensionActual = pensiones[categoria]!;


  double descuento = obtenerDescuento(notaPromedio);
  double montoDescuento = pensionActual * descuento;


  double nuevaPension = pensionActual - montoDescuento;


  print('El descuento es de: S/ $montoDescuento');
  print('La nueva pensión es: S/ $nuevaPension');
}
