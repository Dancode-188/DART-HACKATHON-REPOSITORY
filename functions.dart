/*Program 2: Perform Mathematical Operations with Functions
Write a Dart program that performs two mathematical operations using functions.*/

import 'dart:io';
import 'dart:math';

/**
 * Main function for the Advanced Mathematical Operations Program.
 * Provides a menu-driven interface for performing various mathematical operations.
 */
void main() {
  print('Welcome to the Advanced Mathematical Operations Program!');
  print('Please enter two numbers and select the operations to perform.');

  double num1 = getNumber('Enter the first number: ');
  double num2 = getNumber('Enter the second number: ');

  int operation = -1;
  while (operation != 0) {
    print('\nSelect the operations to perform:');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Modulo');
    print('6. Exponentiation');
    print('7. Square Root');
    print('8. Factorial');
    print('9. Trigonometric Functions');
    print('10. Logarithm');
    print('11. Unit Converter (Length, Weight, Temperature)');
    print('12. Random Number Operations');
    print('13. Formula Evaluation');
    print('14. Mathematical Game (Math Quiz)');
    print('15. ASCII Art - Display Mathematical Symbols');
    print('16. Decimal Precision');
    print('0. Exit');

    operation = getOperation();

    switch (operation) {
      case 1:
        print('Sum of $num1 and $num2: ${addNumbers(num1, num2)}');
        break;
      case 2:
        print('Difference of $num1 and $num2: ${subtractNumbers(num1, num2)}');
        break;
      case 3:
        print('Product of $num1 and $num2: ${multiplyNumbers(num1, num2)}');
        break;
      case 4:
        print('Quotient of $num1 divided by $num2: ${divideNumbers(num1, num2)}');
        break;
      case 5:
        print('Remainder of $num1 divided by $num2: ${modulo(num1, num2)}');
        break;
      case 6:
        print('$num1 raised to the power of $num2: ${exponentiate(num1, num2)}');
        break;
      case 7:
        print('Square root of $num1: ${findSquareRoot(num1)}');
        print('Square root of $num2: ${findSquareRoot(num2)}');
        break;
      case 8:
        print('Factorial of $num1: ${factorial(num1)}');
        print('Factorial of $num2: ${factorial(num2)}');
        break;
      case 9:
        print('Sine of $num1: ${sin(num1)}');
        print('Cosine of $num1: ${cos(num1)}');
        print('Tangent of $num1: ${tan(num1)}');
        print('Arc sine of $num1: ${asin(num1)}');
        print('Arc cosine of $num1: ${acos(num1)}');
        print('Arc tangent of $num1: ${atan(num1)}');
        break;
      case 10:
        print('Natural logarithm of $num1: ${log(num1)}');
        print('Natural logarithm of $num2: ${log(num2)}');
        print('Base 10 logarithm of $num1: ${log(num1) / log(10)}');
        print('Base 10 logarithm of $num2: ${log(num2) / log(10)}');
        break;
      case 11:
        unitConverter();
        break;
      case 12:
        randomOperations();
        break;
      case 13:
        formulaEvaluation();
        break;
      case 14:
        mathQuiz();
        break;
      case 15:
        displayAsciiArt();
        break;
      case 16:
        decimalPrecision();
        break;
      case 0:
        print('Exiting program. Goodbye!');
        break;
      default:
        print('Invalid operation. Please enter a valid operation number.');
    }
  }
}

/**
 * Prompts the user for input and returns the parsed double value.
 *
 * @param prompt The prompt to display to the user
 * @return The parsed double value
 */
double getNumber(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();

    if (input != null) {
      try {
        double number = double.parse(input);
        return number;
      } catch (e) {
        print('Invalid input. Please enter a valid number.');
      }
    }
  }
}

/**
 * Prompts the user for operation input and returns the selected operation.
 *
 * @return The selected operation
 */
int getOperation() {
  while (true) {
    stdout.write('Enter the operation number (0 to stop): ');
    String? input = stdin.readLineSync();

    if (input != null) {
      try {
        int operation = int.parse(input);
        if (operation >= 0 && operation <= 16) {
          return operation;
        } else {
          print('Invalid operation. Please enter a valid operation number.');
        }
      } catch (e) {
        print('Invalid input. Please enter a valid operation number.');
      }
    }
  }
}

/**
 * Adds two numbers.
 *
 * @param num1 The first number
 * @param num2 The second number
 * @return The sum of num1 and num2
 */
double addNumbers(double num1, double num2) {
  return num1 + num2;
}

/**
 * Subtracts two numbers.
 *
 * @param num1 The first number
 * @param num2 The second number
 * @return The difference of num1 and num2
 */
double subtractNumbers(double num1, double num2) {
  return num1 - num2;
}

/**
 * Multiplies two numbers.
 *
 * @param num1 The first number
 * @param num2 The second number
 * @return The product of num1 and num2
 */
double multiplyNumbers(double num1, double num2) {
  return num1 * num2;
}

/**
 * Divides two numbers.
 *
 * @param num1 The dividend
 * @param num2 The divisor
 * @return The quotient of num1 divided by num2
 */
double divideNumbers(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print('Error: Division by zero');
    return double.nan; // Not a Number
  }
}

/**
 * Calculates the remainder of dividing two numbers.
 *
 * @param num1 The dividend
 * @param num2 The divisor
 * @return The remainder of num1 divided by num2
 */
double modulo(double num1, double num2) {
  if (num2 != 0) {
    return num1 % num2;
  } else {
    print('Error: Modulo by zero');
    return double.nan; // Not a Number
  }
}

/**
 * Raises a base to an exponent.
 *
 * @param base The base number
 * @param exponent The exponent
 * @return The result of base raised to the power of exponent
 */
double exponentiate(double base, double exponent) {
  return pow(base, exponent).toDouble();
}

/**
 * Finds the square root of a number.
 *
 * @param num The number to find the square root of
 * @return The square root of num
 */
double findSquareRoot(double num) {
  if (num >= 0) {
    return sqrt(num);
  } else {
    print('Error: Cannot find square root of a negative number');
    return double.nan; // Not a Number
  }
}

/**
 * Calculates the factorial of a number.
 *
 * @param num The number to calculate the factorial of
 * @return The factorial of num
 */
double factorial(double num) {
  if (num < 0) {
    print('Error: Factorial is not defined for negative numbers.');
    return double.nan;
  }
  if (num == 0) {
    return 1;
  }
  double result = 1;
  for (int i = 1; i <= num; ++i) {
    result *= i;
  }
  return result;
}

/**
 * Converts units (length, weight, temperature).
 */
void unitConverter() {
  print('\n--- Unit Converter ---');
  print('Select the conversion:');
  print('1. Length');
  print('2. Weight');
  print('3. Temperature');
  print('0. Back');

  stdout.write('Enter your choice: ');
  String? input = stdin.readLineSync();

  switch (input) {
    case '1':
      lengthConverter();
      break;
    case '2':
      weightConverter();
      break;
    case '3':
      temperatureConverter();
      break;
    case '0':
      break;
    default:
      print('Invalid choice');
  }
}

/**
 * Converts lengths between different units.
 */
void lengthConverter() {
  print('\n--- Length Converter ---');
  print('Select the conversion:');
  print('1. Meters to Feet');
  print('2. Feet to Meters');
  print('3. Kilometers to Miles');
  print('4. Miles to Kilometers');
  print('0. Back');

  stdout.write('Enter your choice: ');
  String? input = stdin.readLineSync();

  switch (input) {
    case '1':
      print('Enter length in meters: ');
      double lengthMeters = double.parse(stdin.readLineSync() ?? '0');
      print('Length in feet: ${lengthMeters * 3.28084}');
      break;
    case '2':
      print('Enter length in feet: ');
      double lengthFeet = double.parse(stdin.readLineSync() ?? '0');
      print('Length in meters: ${lengthFeet / 3.28084}');
      break;
    case '3':
      print('Enter distance in kilometers: ');
      double distanceKm = double.parse(stdin.readLineSync() ?? '0');
      print('Distance in miles: ${distanceKm * 0.621371}');
      break;
    case '4':
      print('Enter distance in miles: ');
      double distanceMiles = double.parse(stdin.readLineSync() ?? '0');
      print('Distance in kilometers: ${distanceMiles / 0.621371}');
      break;
    case '0':
      break;
    default:
      print('Invalid choice');
  }
}

/**
 * Converts weights between different units.
 */
void weightConverter() {
  print('\n--- Weight Converter ---');
  print('Select the conversion:');
  print('1. Kilograms to Pounds');
  print('2. Pounds to Kilograms');
  print('3. Grams to Ounces');
  print('4. Ounces to Grams');
  print('0. Back');

  stdout.write('Enter your choice: ');
  String? input = stdin.readLineSync();

  switch (input) {
    case '1':
      print('Enter weight in kilograms: ');
      double weightKg = double.parse(stdin.readLineSync() ?? '0');
      print('Weight in pounds: ${weightKg * 2.20462}');
      break;
    case '2':
      print('Enter weight in pounds: ');
      double weightLbs = double.parse(stdin.readLineSync() ?? '0');
      print('Weight in kilograms: ${weightLbs / 2.20462}');
      break;
    case '3':
      print('Enter weight in grams: ');
      double weightGrams = double.parse(stdin.readLineSync() ?? '0');
      print('Weight in ounces: ${weightGrams * 0.035274}');
      break;
    case '4':
      print('Enter weight in ounces: ');
      double weightOunces = double.parse(stdin.readLineSync() ?? '0');
      print('Weight in grams: ${weightOunces / 0.035274}');
      break;
    case '0':
      break;
    default:
      print('Invalid choice');
  }
}

/**
 * Converts temperatures between Celsius and Fahrenheit.
 */
void temperatureConverter() {
  print('\n--- Temperature Converter ---');
  print('Select the conversion:');
  print('1. Celsius to Fahrenheit');
  print('2. Fahrenheit to Celsius');
  print('0. Back');

  stdout.write('Enter your choice: ');
  String? input = stdin.readLineSync();

  switch (input) {
    case '1':
      print('Enter temperature in Celsius: ');
      double tempCelsius = double.parse(stdin.readLineSync() ?? '0');
      print('Temperature in Fahrenheit: ${(tempCelsius * 9/5) + 32}');
      break;
    case '2':
      print('Enter temperature in Fahrenheit: ');
      double tempFahrenheit = double.parse(stdin.readLineSync() ?? '0');
      print('Temperature in Celsius: ${(tempFahrenheit - 32) * 5/9}');
      break;
    case '0':
      break;
    default:
      print('Invalid choice');
  }
}

/**
 * Performs random operations with random numbers.
 */
void randomOperations() {
  print('\n--- Random Number Operations ---');
  print('Performing operations with random numbers:');

  Random random = Random();
  int randomNum1 = random.nextInt(100);
  int randomNum2 = random.nextInt(100);

  print('Random Number 1: $randomNum1');
  print('Random Number 2: $randomNum2');
  print('Sum: ${randomNum1 + randomNum2}');
  print('Difference: ${randomNum1 - randomNum2}');
  print('Product: ${randomNum1 * randomNum2}');
  if (randomNum2 != 0) {
    print('Quotient: ${randomNum1 / randomNum2}');
    print('Remainder: ${randomNum1 % randomNum2}');
  } else {
    print('Cannot divide by zero');
  }
}

/**
 * Evaluates a mathematical expression entered by the user.
 */
void formulaEvaluation() {
  print('\n--- Formula Evaluation ---');
  print('Enter a mathematical expression (e.g., 2 * (3 + 4) / 5): ');
  String? expression = stdin.readLineSync();

  try {
    double result = evaluateExpression(expression!);
    print('Result: $result');
  } catch (e) {
    print('Error: Invalid expression');
  }
}

/**
 * Evaluates a mathematical expression and returns the result.
 *
 * @param expression The mathematical expression to evaluate
 * @return The result of the expression
 */
double evaluateExpression(String expression) {
  List<String> tokens = expression.split(' ');
  double result = double.parse(tokens[0]);
  for (int i = 1; i < tokens.length; i += 2) {
    String operator = tokens[i];
    double operand = double.parse(tokens[i + 1]);

    switch (operator) {
      case '+':
        result += operand;
        break;
      case '-':
        result -= operand;
        break;
      case '*':
        result *= operand;
        break;
      case '/':
        if (operand != 0) {
          result /= operand;
        } else {
          throw Exception('Division by zero');
        }
        break;
      default:
        throw Exception('Invalid operator');
    }
  }
  return result;
}

/**
 * Conducts a simple math quiz with the user.
 */
void mathQuiz() {
  print('\n--- Mathematical Quiz ---');
  print('Answer the following questions:');

  int correctAnswers = 0;
  int totalQuestions = 5;

  for (int i = 0; i < totalQuestions; i++) {
    int num1 = Random().nextInt(10);
    int num2 = Random().nextInt(10);
    int answer = num1 + num2;

    stdout.write('Question ${i + 1}: What is $num1 + $num2? ');
    String? userAnswer = stdin.readLineSync();

    if (userAnswer != null) {
      try {
        int userNum = int.parse(userAnswer);
        if (userNum == answer) {
          print('Correct!');
          correctAnswers++;
        } else {
          print('Incorrect. The correct answer is: $answer');
        }
      } catch (e) {
        print('Invalid input. Please enter a number.');
      }
    }
  }

  double percentage = (correctAnswers / totalQuestions) * 100;
  print('\nMath Quiz Results:');
  print('Correct Answers: $correctAnswers out of $totalQuestions');
  print('Percentage: $percentage%');
}

/**
 * Displays ASCII art of mathematical symbols.
 */
void displayAsciiArt() {
  print('\n--- ASCII Art - Mathematical Symbols ---');
  print('Displaying some mathematical symbols in ASCII art:');
  print('Sum (+):');
  print('   |\\');
  print('   | \\');
  print('---+---');
  print('   |   ');
  print('Product (×):');
  print('  *  ');
  print('  |  ');
  print('---+---');
  print('  |  ');
  print('Division (÷):');
  print(' ┌─┐');
  print(' ─┘─');
  print(' --- ');
  print('Modulo (%):');
  print('   ');
  print(' | ');
  print('---');
  print(' | ');
  print('Exponentiation (^):');
  print('  ^');
  print(' / ');
  print('   ');
  print('Square Root (√):');
  print('  \/ ');
  print('-----');
  print('Factorial (!):');
  print('  !');
  print('   ');
}

/**
 * Allows the user to specify the decimal precision of a number.
 */
void decimalPrecision() {
  print('\n--- Decimal Precision ---');
  print('Enter a number: ');
  double? number = double.tryParse(stdin.readLineSync() ?? '');

  if (number != null) {
    print('Number with 2 decimal places: ${number.toStringAsFixed(2)}');
    print('Number with 4 decimal places: ${number.toStringAsFixed(4)}');
    print('Number with 6 decimal places: ${number.toStringAsFixed(6)}');
  } else {
    print('Invalid input. Please enter a number.');
  }
}