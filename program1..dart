/*Program 1: Display Personal Information
Write a Dart program using variables to display your name, age, school, and a hobby. Print it in one logical sentence.*/

import 'dart:io';
/**
 * The main function of the Personal Information App.
 * It collects and displays user information including name, age, school/university, hobby, and favorite color.
 * Uses colorful output and emojis for a fun user experience.
 */
void main() {
  // Welcome message with ASCII art and emojis
  print('''
  ╔═╗┌─┐┌─┐┌┐┌╔═╗╦═╗╔═╗╔═╗
  ╚═╗│  │ ││││╠═╝╠╦╝║ ║╠═╝
  ╚═╝└─┘└─┘┘└┘╩  ╩╚═╚═╝╩
  ''');
  print("Welcome to the Personal Information App! 🎯\n");

  // Ask for user input
  print("Enter your name 📝:");
  String? name = stdin.readLineSync();

  print("Enter your age 🎂:");
  int? age;
  try {
    age = int.parse(stdin.readLineSync()!);
    if (age <= 0 || age > 150) {
      print("Invalid age. Please enter a valid age.");
      return;
    }
  } catch (e) {
    print("Invalid age format. Please enter a valid number.");
    return;
  }

  print("Enter your school / university 🏫:");
  String? school = stdin.readLineSync();

  print("Enter your hobby ⚽️:");
  String? hobby = stdin.readLineSync();

  print("Enter your favorite color 🌈:");
  String? color = stdin.readLineSync();

  // Display user input with colorful output and emojis
  print('\x1B[35m'); // Purple color
  print("\n*********************************");
  print("*     Personal Information       *");
  print("*********************************");
  print('\x1B[0m'); // Reset color
  print("📝 My name is $name,");
  print("🎂 I am $age years old,");
  print("🏫 I attend $school,");
  print("⚽️ My hobby is $hobby,");
  print("🌈 My favorite color is $color.");

  // Display a congratulatory message with emojis
  print('\x1B[32m'); // Green color
  print("\n🎉 Congratulations, $name! You have successfully entered your information.");
  print('\x1B[0m'); // Reset color
}