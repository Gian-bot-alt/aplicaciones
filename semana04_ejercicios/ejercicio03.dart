import 'dart:io';

void main() {

  const double sueldoBasico = 600.0;


  print('Ingrese el importe total vendido por el vendedor:');
  double? importeVendido = double.tryParse(stdin.readLineSync()!);


  print('Ingrese el número de hijos del vendedor:');
  int? numeroHijos = int.tryParse(stdin.readLineSync()!);

  if (importeVendido == null || numeroHijos == null) {
    print('Error: valores inválidos.');
    return;
  }


  double comision;
  if (importeVendido > 15000) {
    comision = importeVendido * 0.07; // 7%
  } else {
    comision = importeVendido * 0.05; // 5%
  }


  double bonificacion;
  if (numeroHijos < 5) {
    bonificacion = numeroHijos * 0.25; // S/ 0.25 por cada hijo
  } else {
    bonificacion = numeroHijos * 0.22; // S/ 0.22 por cada hijo
  }


  double sueldoBruto = sueldoBasico + comision + bonificacion;


  double descuento;
  if (sueldoBruto > 3500) {
    descuento = sueldoBruto * 0.15; // 15%
  } else {
    descuento = sueldoBruto * 0.11; // 11%
  }


  double sueldoNeto = sueldoBruto - descuento;


  print('Sueldo básico: S/ $sueldoBasico');
  print('Comisión: S/ $comision');
  print('Bonificación: S/ $bonificacion');
  print('Sueldo bruto: S/ $sueldoBruto');
  print('Descuento: S/ $descuento');
  print('Sueldo neto: S/ $sueldoNeto');
}
