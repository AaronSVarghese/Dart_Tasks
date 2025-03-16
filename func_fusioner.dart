void main() {
  
  
  processList([1, 2, 3, 4, 5], (int number) => number * 2);
  
  
  processList([1, 2, 3, 4, 5], (int number) => number * number);
  
  
  processList([1, 2, 3, 4, 5], (int number) => number * number * number);
}


void processList(List<int> numbers, int Function(int) operation) {
  print('Input List: $numbers');
  print('Output List:');
  
  for (int number in numbers) {
    int result = operation(number);
    print(result);
  }
  print('');
}
