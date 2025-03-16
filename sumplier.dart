import 'dart:io';
void main() {
  print(' Multiplication Table Generator\n');
  print('Enter a number to generate its multiplication table:');
  int number = int.parse(stdin.readLineSync()!);
  List<int> multiples = generateMultiplicationTable(number);
  int sum = calculateSum(multiples);  
  print('\nMultiplication Table for $number:');
  print('--------------------------------');
  for (int i = 0; i < multiples.length; i++) {
    print('$number x ${i + 1} = ${multiples[i]}');
  }
  print('--------------------------------');
  print('\nSum of all numbers in the table: $sum');
}
List<int> generateMultiplicationTable(int number) {
  List<int> multiples = [];
  for (int i = 1; i <= 10; i++) {
    multiples.add(number * i);
  }
  return multiples;
}
int calculateSum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}
