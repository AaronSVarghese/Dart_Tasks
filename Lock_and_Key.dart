import 'dart:math';

class PasswordManager {
 
  bool validatePasswordStrength(String password) {
    
    RegExp strongRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%^&*()_+}{":;\?/>.<,])(?=.{8,})');
    return strongRegex.hasMatch(password);
  }

  
  String generateStrongPassword() {
    
    String lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
    String uppercaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String digitChars = '0123456789';
    String specialChars = '!@#\$%^&*()_+":;\'?/>.<,';

    
    String allChars = lowercaseChars + uppercaseChars + digitChars + specialChars;

    
    List<String> charsList = allChars.split('');
    charsList.shuffle();

    
    String password = charsList.take(12).join('');
    return password;
  }

  String generateIntermediatePassword() {
    
    String lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
    String uppercaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String digitChars = '0123456789';

    String allChars = lowercaseChars + uppercaseChars + digitChars;

    List<String> charsList = allChars.split('');
    charsList.shuffle();

    
    String password = charsList.take(10).join('');
    return password;
  }

  String generateLowPassword() {
    
    String lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
    String digitChars = '0123456789';

    
    String allChars = lowercaseChars + digitChars;

    List<String> charsList = allChars.split('');
    charsList.shuffle();

    
    String password = charsList.take(8).join('');
    return password;
  }
}

void main() {
  PasswordManager passwordManager = PasswordManager();

  String strongPassword = passwordManager.generateStrongPassword();
  String intermediatePassword = passwordManager.generateIntermediatePassword();
  String lowPassword = passwordManager.generateLowPassword();

  print('Strong Password: $strongPassword');
  print('Intermediate Password: $intermediatePassword');
  print('Low Password: $lowPassword');

  String passwordToCheck = 'StrongPass123!'; // Example password to check
  bool isStrong = passwordManager.validatePasswordStrength(passwordToCheck);
  print('Is Strong Password: $isStrong');
}
