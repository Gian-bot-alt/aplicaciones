import 'dart:io';

void main() {

  double costoMayor18 = 350.0;
  double costoMenorIgual18 = 200.0;


  double obtenerDescuento(int edad, int nivelBeneficio) {
    if (edad <= 18) {
      
      if (nivelBeneficio == 1) {
        return 0.60; 
      } else if (nivelBeneficio == 2) {
        return 0.40; 
      } else if (nivelBeneficio == 3) {
        return 0.20; 
      } else {
        return 0.0;  
      }
    } else {
      
      if (nivelBeneficio == 1) {
        return 0.40; 
      } else if (nivelBeneficio == 2) {
        return 0.30; 
      } else if (nivelBeneficio == 3) {
        return 0.15; 
      } else {
        return 0.0; 
      }
    }
  }

  
  print('Ingrese la edad del hombre: ');
  int? edad = int.tryParse(stdin.readLineSync()!);

  if (edad == null || edad < 0) {
    print('Edad inválida.');
    return;
  }

  
  print('Ingrese el nivel del sistema de beneficio (1, 2, 3, u otro): ');
  int? nivelBeneficio = int.tryParse(stdin.readLineSync()!);

  if (nivelBeneficio == null) {
    print('Nivel inválido.');
    return;
  }

  
  double costoBase = (edad <= 18) ? costoMenorIgual18 : costoMayor18;

 
  double descuento = obtenerDescuento(edad, nivelBeneficio);
  double montoDescuento = costoBase * descuento;

  double costoFinal = costoBase - montoDescuento;


  print('El descuento aplicado es de: S/ $montoDescuento');
  print('El costo final a pagar es: S/ $costoFinal');
}
