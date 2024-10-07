import 'dart:io';

void main() {
  // Solicitar la cantidad total a repartir
  stdout.write("Ingrese la cantidad de dinero a repartir: ");
  double total = double.parse(stdin.readLineSync()!);

  // Calcular cuánto recibe cada hijo
  double josue = total * 0.27;
  double tamar = josue * 0.85;
  double daniel = total * 0.25;
  double caleb = (josue + daniel) * 0.23;
  double david = total - (tamar + josue + caleb + daniel);

  // Mostrar los resultados
  print("Dinero recibido por cada hijo:");
  print("Tamar: \$${tamar.toStringAsFixed(2)}");
  print("Josué: \$${josue.toStringAsFixed(2)}");
  print("Caleb: \$${caleb.toStringAsFixed(2)}");
  print("Daniel: \$${daniel.toStringAsFixed(2)}");
  print("David: \$${david.toStringAsFixed(2)}");
}
