import 'dart:io';
import 'dart:math';

void main() {
  // Solicitar el radio y la altura al usuario
  stdout.write("Ingrese el radio del cilindro (r): ");
  double radio = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura del cilindro (h): ");
  double altura = double.parse(stdin.readLineSync()!);

  // Calcular el área total (A) y el volumen (V)
  double areaTotal = calcularAreaTotal(radio, altura);
  double volumen = calcularVolumen(radio, altura);

  // Mostrar los resultados
  print("El área total del cilindro es: ${areaTotal.toStringAsFixed(2)}");
  print("El volumen del cilindro es: ${volumen.toStringAsFixed(2)}");
}

// Función para calcular el área total del cilindro
double calcularAreaTotal(double r, double h) {
  return 2 * pi * r * (r + h);
}

// Función para calcular el volumen del cilindro
double calcularVolumen(double r, double h) {
  return pi * pow(r, 2) * h;
}
