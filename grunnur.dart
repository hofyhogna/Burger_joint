void main(List<String> arguments) {
  String firstName = "Hofy";
  String lastName = "Hognadottir";
  print("hi $firstName $lastName");
  String fullName = firstName + "" + lastName;
  print("Hi $fullName");

  String SSN = "180386-3009";
  String fixSSN = SSN.replaceAll("-", "");
  int ssnLength = fixSSN.length;
  print(ssnLength);
  String message = "Hello World";
  String fixMessage = message.replaceAll("World", "NTV");
  print(fixMessage.toUpperCase());

  String birthDate = SSN.substring(0,6);
  print(birthDate);
  String email = "Hmh7@Nemandi.nTv.is";
  print(email.toLowerCase());

  // -----------------------------

  /*
  print("Hvað er uppáhaldstalan þín?");
  String inputNumber = stdin.readLineSync().toString();
  print("Hún er $inputNumber");
  int result = 5 * int.parse(inputNumber);
  print("5 sinnum $inputNumber er $result");


  int number1 = 8;
  int number2 = 3;
  double result2 = number1 / number2;
  print(result2.toStringAsFixed(3));

  print("Hæ hvað heitir þú?");
  String firstName = stdin.readLineSync(encoding: utf8).toString();
  print("Hvað er eftirnafnið þitt?");
  String lastName = stdin.readLineSync(encoding: utf8).toString();
  //Bætið við núna að spyrja um eftirnafn og prentið svo út "Hello fullt nafn"
  firstName = firstName.replaceAll(firstName, "Jón");
  //Svo breyta firstname í "Jón" ef þið heitið jón breytið í Klemenz
  print("Hello $firstName $lastName");
   */
  String firstName = "Guðríður Þuríður";
  String lastName = "Guðjónsdóttir";
  String fullName = firstName + " " + lastName;
  String url = "ntv.is";

  List<String> names = firstName.split(" ");
  print(names);
  print(names[0]);
  print(names[1]);

  String username = names[0] + names[1].substring(0,1) + lastName.substring(0,3);
  username = username.toLowerCase();
  username = removeIcelandicLetters(username);
  print(username);
  String emailAddress = username + "@" + url;
  print(emailAddress);
}

String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;

  //--------------------------import 'dart:io';
  //
  // void main(List<String> arguments) {
  //   /*int personAge = 20;
  //   int driverLicenseAge = 17;
  //   bool doesPersonHaveDriversLicense = false;
  //   print(personAge);
  //   if(personAge >= driverLicenseAge && doesPersonHaveDriversLicense == true) {
  //     print("Þú mátt keyra");
  //   }  else if(personAge >= driverLicenseAge && doesPersonHaveDriversLicense == false) {
  //     print("Þú mátt hringja í ökukennara og byrja að læra að keyra");
  //   } else {
  //     print("Takt þú stærtó.");
  //   }
  //
  //   if(!(5>7)) {
  //     print("This is true");
  //   }*/
  //   bool authenticated = false;
  //   while(authenticated == false) {
  //     String myPassword = "MasterOfTheWorld123!";
  //     String username = "admin";
  //
  //     print("Enter your username");
  //     String loginUser = stdin.readLineSync().toString();
  //     print("Enter Your Password");
  //     String loginPassword = stdin.readLineSync().toString();
  //
  //     if (loginUser.toLowerCase() == username.toLowerCase() && loginPassword == myPassword) {
  //       print("You are in. Welcome to the Jungle");
  //       authenticated = true;
  //     } else {
  //       print("User or password incorrect");
  //       print("Please try again");
  //     }
  //   }
  //
  // }

  //_________________________________________
  import 'dart:io';

  void main(List<String> arguments) {
    bool validNumber = false;
    while (validNumber == false) {
      print("Skrifaðu símanúmerið þitt");
      String phoneNumber = stdin.readLineSync().toString();
      print("Þú skrifaðir $phoneNumber");
      if(phoneNumber.contains("+354") == true) {
        phoneNumber = phoneNumber.replaceAll("+354", "");
        print("Heyrðu góði, þú settir +354, allt í góðu ég tek það út");
      }
      if (phoneNumber.length == 8) {
        print("Ég vona að þú hafir bara bætt við auka bili eða mínus og ég ætla taka það út");
        phoneNumber = phoneNumber.replaceAll("-", "");
        phoneNumber = phoneNumber.replaceAll(" ", "");
      }
      print("$phoneNumber, ég mun ná að breyta þessu ef það eru bara tölusafir í $phoneNumber");
      int? phoneNumberStoage = int.tryParse(phoneNumber);
      if (phoneNumber.length == 7 && phoneNumberStoage is int) {
        print("Okei næs, ég er með rétta lengd og þetta eru bara tölustafir.");
        if(phoneNumber[0] != "1") {
          print("Þetta símanúmer er valid");
          validNumber = true;
        }
        print("Ertu ekki að grínast, afhverju byrjar símanumer þitt á 1?!?");
      }
    }
  }

  //----------------------------

  import 'package:ntv_vor_25/methods.dart';
  void main(List<String> arguments) {
    /*
    0. Create a personal message. Use a variable to represent a person's name, and print a
    message to that person. Your message should be simple, such as 'Good morning
    Hjörtur, would you like to learn Dart strings today?'
    Store Message and Name in seperate variable.
   */

    /* 1. Find a quote from a famous person you admire. Print the quote and the name of its
  author. Your output should look something like the following, including the
  quotation marks:
  1. Albert Einstein once said, 'A person who never made a mistake never tried
  anything new.'
  */

    /*
    2. Assign a message to a variable, and print that message. Then change the value of
  the variable to a new message, and print the new message.
   */

    /*
    3.  Remove all the spaces from the rhyme. And print the modified rhyme.
   */
    String NureseryRyhme = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";
    /*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */

    /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
   */
    String SSN1 = "200689-2409";
    String SSN2 = "200689 2409";
    String SSN3 = "2 006 8924 09";
    /*
  Bónus task calculate the age from the SSN.
   */
  }

  //____________________________
  import 'dart:io';
  import 'dart:math';



  void main() {
    int highScore = 0;

    bool playAgain = true;

    while (playAgain) {
      print("Hæ viltu giska á tölu milli 1 og 100?");
      stdout.write("Hversu góður helduru að þú sért? veldu erfiðleika stig (1: Létt, 2: Meðal, 3: Erfitt): ");
      int difficulty = int.parse(stdin.readLineSync()!);

      int range = 100; // Default to easy
      if (difficulty == 2) {
        range = 200;
      } else if (difficulty == 3) {
        range = 300;
      }

      int targetNumber = Random().nextInt(range) + 1;
      int attempts = 10;
      bool guessedCorrectly = false;
      int currentScore = 0;

      while (attempts > 0 && !guessedCorrectly) {
        print(" $attempts gisk eftir");
        stdout.write("Giskaðu á tölu á milli 1 og $range: ");
        int? guess = int.tryParse(stdin.readLineSync()!);

        if (guess == null) {
          print("Heyrðu? Þetta er ekki tala, skrifaðu tölu á milli 1 og $range:");
          continue;
        }

        currentScore++; // Increase score as the player makes attempts

        if (guess < targetNumber) {
          print("Of lág tala! Reyndu aftur.");
        } else if (guess > targetNumber) {
          print("Of há tala! Reyndu aftur.");
        } else {
          print("Til hamingj snillingur! þetta er rétt hjá þér.");
          guessedCorrectly = true;
          break;
        }

        attempts--;
      }

      if (!guessedCorrectly) {
        print("Sorrý þú ert dauður! rétta talan var $targetNumber.");
      }

      if (guessedCorrectly && currentScore < highScore || highScore == 0) {
        highScore = currentScore;
        print("Þú ert á toppnum! Þú giskaðir á töluna í  $currentScore attempts.");
      }

      print("Besta skorið hingað til eru : $highScore tilraunir.");

      stdout.write("Viltu spila aftur? (y/n): ");
      String? response = stdin.readLineSync()?.toLowerCase();
      if (response != null && response != 'y') {
        playAgain = false;
        print("Takk fyrir að spila, sjáumst seinna.");
      }
    }
  }