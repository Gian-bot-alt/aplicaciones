import 'dart:io';

void main() {
  // Solicitar el monto total a invertir
  stdout.write("Ingrese el monto total a invertir: ");
  double totalInversion = double.parse(stdin.readLineSync()!);

  // Calcular cuánto se gasta en cada rubro
  double alquiler = totalInversion * 0.23;
  double publicidad = totalInversion * 0.07;
  double transporte = totalInversion * 0.26;
  double serviciosFeriales = totalInversion * 0.12;
  double decoracion = totalInversion * 0.21;
  double gastosVarios = totalInversion * 0.11;

  // Mostrar los resultados
  print("Gastos en cada rubro:");
  print("Alquiler de espacio en la feria: \$${alquiler.toStringAsFixed(2)}");
  print("Publicidad: \$${publicidad.toStringAsFixed(2)}");
  print("Transporte: \$${transporte.toStringAsFixed(2)}");
  print("Servicios feriales: \$${serviciosFeriales.toStringAsFixed(2)}");
  print("Decoración: \$${decoracion.toStringAsFixed(2)}");
  print("Gastos varios: \$${gastosVarios.toStringAsFixed(2)}");
}
