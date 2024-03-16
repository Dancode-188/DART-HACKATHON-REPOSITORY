
/*Program 3: Determine Grade Based on Marks
Write a Dart program to determine the grade based on a student's marks. The program should print out the appropriate grade according to the following criteria:
- If the marks are greater than 85, print "Excellent".
- If the marks are between 75 and 85 (inclusive), print "Very Good".
- If the marks are between 65 and 75 (inclusive), print "Good".
- If the marks are below 65, print "Average".*/

import 'dart:io';

/**
 * The main function of the program.
 * It executes the Grade Genie application, prompting the user to enter their name and marks,
 * calculates the grade, displays it along with feedback in the selected language.
 */
void main() {
  // Print welcome messages
  print('Welcome to the Grade Genie!');
  print('Enter your marks to discover your academic fate...');

  stdout.write('Enter your name: ');
  String name = stdin.readLineSync() ?? 'Anonymous';

  int marks = getValidatedMarks();

  Student student = Student(name: name, marks: marks);
  student.displayGrade();

  String language = selectLanguage();
  String gradeFeedback = getFeedback(student.grade, student.name, language);
  print(gradeFeedback);
}

/**
 * Represents a Student with a name and marks.
 */
class Student {
  String name;
  int marks;
  late String grade;
  late String emoji;

  /**
   * Constructs a Student with a name and marks.
   *
   * @param name The name of the student
   * @param marks The marks obtained by the student
   */
  Student({required this.name, required this.marks}) {
    calculateGrade();
  }

  /**
   * Calculates the grade and corresponding emoji based on the marks.
   */
  void calculateGrade() {
    if (marks > 95) {
      grade = 'Outstanding';
      emoji = '🌟';
    } else if (marks > 85) {
      grade = 'Excellent';
      emoji = '🏆';
    } else if (marks > 75) {
      grade = 'Very Good';
      emoji = '🎉';
    } else if (marks > 65) {
      grade = 'Good';
      emoji = '👍';
    } else if (marks > 55) {
      grade = 'Average';
      emoji = '😕';
    } else if (marks > 45) {
      grade = 'Below Average';
      emoji = '😟';
    } else if (marks > 35) {
      grade = 'Poor';
      emoji = '😞';
    } else {
      grade = 'Fail';
      emoji = '💔';
    }
  }

  /**
   * Displays the student's name and grade with emoji.
   */
  void displayGrade() {
    print('Hello, $name!');
    print('Your Grade: $grade $emoji');
  }
}

/**
 * Returns feedback message based on grade, user's name, and selected language.
 *
 * @param grade The grade obtained by the student
 * @param userName The name of the student
 * @param language The selected language for feedback
 * @return The feedback message
 */
String getFeedback(String grade, String userName, String language) {
  Map<String, String> messages = languageMap(language);

  switch (grade) {
    case 'Outstanding':
      return '${messages['wow']} $userName, ${messages['outstanding']}';
    case 'Excellent':
      return '${messages['bravo']} $userName! ${messages['excellent']}';
    case 'Very Good':
      return '${messages['impressive']} $userName! ${messages['veryGood']}';
    case 'Good':
      return '${messages['wellDone']} $userName! ${messages['good']}';
    case 'Average':
      return '${messages['notBad']} $userName! ${messages['average']}';
    case 'Below Average':
      return '${messages['dontWorry']} $userName, ${messages['belowAverage']}';
    case 'Poor':
      return '${messages['capableOfMore']} $userName! ${messages['poor']}';
    case 'Fail':
      return '${messages['dontBeDisheartened']} $userName. ${messages['fail']}';
    default:
      return '';
  }
}

/**
 * Gets validated marks input from the user.
 *
 * @return The validated marks
 */
int getValidatedMarks() {
  while (true) {
    stdout.write('Marks (0-100): ');
    String? input = stdin.readLineSync();

    if (input != null) {
      try {
        int marks = int.parse(input);
        if (marks >= 0 && marks <= 100) {
          return marks;
        } else {
          print('Please enter a valid mark between 0 and 100.');
        }
      } catch (e) {
        print('Invalid input. Please enter a valid mark.');
      }
    }
  }
}

/**
 * Allows the user to select a language for feedback.
 *
 * @return The selected language
 */
String selectLanguage() {
  stdout.write('Select your language (en/es/fr/sw): ');
  String language = stdin.readLineSync()?.toLowerCase() ?? 'en';
  return language;
}

/**
 * Returns a map of feedback messages based on the selected language.
 *
 * @param language The selected language
 * @return A map of feedback messages
 */
Map<String, String> languageMap(String language) {
  switch (language) {
    case 'en':
      return {
        'wow': 'Wow',
        'outstanding': 'you\'re absolutely outstanding! Keep up the amazing work!',
        'bravo': 'Bravo',
        'excellent': 'Your excellence shines bright!',
        'impressive': 'Impressive',
        'veryGood': 'You\'re on the right path!',
        'wellDone': 'Well done',
        'good': 'Your efforts are paying off!',
        'notBad': 'Not bad',
        'average': 'Keep striving for improvement!',
        'dontWorry': 'Don\'t worry',
        'belowAverage': 'everyone has off days. Keep pushing forward!',
        'capableOfMore': 'You\'re capable of more',
        'poor': 'Keep your chin up and work harder!',
        'dontBeDisheartened': 'Don\'t be disheartened',
        'fail': 'Use this setback as motivation for improvement!'
      };
    case 'es':
      return {
        'wow': 'Wow',
        'outstanding': 'eres absolutamente sobresaliente! Sigue con el trabajo increíble!',
        'bravo': 'Bravo',
        'excellent': 'Tu excelencia brilla intensamente!',
        'impressive': 'Impresionante',
        'veryGood': 'Vas por el camino correcto!',
        'wellDone': 'Bien hecho',
        'good': 'Tus esfuerzos están dando resultados!',
        'notBad': 'No está mal',
        'average': 'Sigue esforzándote por mejorar!',
        'dontWorry': 'No te preocupes',
        'belowAverage': 'todos tienen días malos. Sigue adelante!',
        'capableOfMore': 'Eres capaz de más',
        'poor': 'Mantén la cabeza alta y trabaja más duro!',
        'dontBeDisheartened': 'No te desanimes',
        'fail': 'Usa este contratiempo como motivación para mejorar!'
      };
    case 'fr':
      return {
        'wow': 'Wow',
        'outstanding': 'vous êtes absolument exceptionnel! Continuez le travail incroyable!',
        'bravo': 'Bravo',
        'excellent': 'Votre excellence brille de mille feux!',
        'impressive': 'Impressionnant',
        'veryGood': 'Vous êtes sur la bonne voie!',
        'wellDone': 'Bien joué',
        'good': 'Vos efforts portent leurs fruits!',
        'notBad': 'Pas mal',
        'average': 'Continuez à vous efforcer de vous améliorer!',
        'dontWorry': 'Ne vous inquiétez pas',
        'belowAverage': 'tout le monde a des jours sans. Continuez d\'avancer!',
        'capableOfMore': 'Vous êtes capable de plus',
        'poor': 'Gardez la tête haute et travaillez plus dur!',
        'dontBeDisheartened': 'Ne soyez pas découragé',
        'fail': 'Utilisez ce revers comme motivation pour vous améliorer!'
      };
      case 'sw':
      return {
        'wow': 'Wow',
        'outstanding': 'wewe ni mzuri sana! Endelea na kazi nzuri!',
        'bravo': 'Bravo',
        'excellent': "Utalii wako unang'aa sana!",
        'impressive': 'Kuwa tajiri wa kazi!',
        'veryGood': 'Ume pata njia sahihi!',
        'wellDone': 'Vizuri sana',
        'good': 'Kazi yako inajipa!',
        'notBad': 'Sio mbaya',
        'average': 'Endelea kujitahidi kujiboresha!',
        'dontWorry': 'Usiwe na wasiwasi',
        'belowAverage': 'Kila mtu ana siku mbaya. Endelea mbele!',
        'capableOfMore': 'Wewe ni uwezo zaidi',
        'poor': 'Shikilia kichwa juu na fanya kazi kwa bidii zaidi!',
        'dontBeDisheartened': 'Usikate tamaa',
        'fail': 'Tumia hali hii kama motisha ya kujiboresha!'
      };
    default:
      return languageMap('en');
  }
}