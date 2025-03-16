import 'dart:io';

void main() {
  print('Welcome to the Sum Calculator\n');

  print('Please enter the first number:');
  double no1 = double.parse(stdin.readLineSync()!);

  print('Please enter the second number:');
  double no2 = double.parse(stdin.readLineSync()!);

  double sum = no1 + no2;

  print('\nThe sum of $no1 and $no2 is $sum');
}
