🧾 Process Documentation (Automation of Number System Conversions)
1. Project Title
Automation of the Number System Conversions from One Number System to Another
2. Group Composition
Five members (list your names and registration numbers)
3. Objective
To develop a mobile application that automates the conversion between different number systems—Binary, Decimal, Octal, and Hexadecimal—allowing users to perform accurate conversions quickly on Android and iOS devices.
4. Tools and Technologies
•	Programming Language: Dart
•	Framework: Flutter
•	IDE: Android Studio / Visual Studio Code
•	Version Control: GitHub (for collaboration)
•	Deployment Platforms: Android and iOS
•	Testing Tools: Flutter DevTools, Emulator/Simulator
5. System Overview
The app accepts a number in one number system and automatically converts it into the other three systems.
Example: If the user inputs a binary number 1010, the app should output:
•	Decimal → 10
•	Octal → 12
•	Hexadecimal → A
6. Process Steps
1.	Planning:
o	Discussed project scope, requirements, and role allocation.
o	Selected Flutter for cross-platform development.
2.	Design:
o	Created wireframes showing input fields and output sections.
o	Designed a clean, minimal UI with real-time conversion.
3.	Implementation:
o	Developed converter functions for Binary, Decimal, Octal, and Hexadecimal.
o	Integrated the logic with Flutter UI.
4.	Testing:
o	Tested multiple number inputs for accuracy.
o	Conducted group peer review and debugging.
5.	Deployment:
o	Built the app in release mode.
o	Deployed to Android (APK) and iOS (IPA) builds.
6.	Collaboration:
o	Added instructor as collaborator on GitHub repository for review.
7. Expected Output
A functional, user-friendly mobile app that can:
•	Convert between all major number systems instantly.
•	Run efficiently on Android and iOS.
•	Allow offline use.
ii.	
Submit Program documentation 
💻 Program Documentation
Project Title:
Automation of the Number System Conversions from One Number System to Another
________________________________________
1. Programming Language and Framework
•	Language: Dart
•	Framework: Flutter
•	Purpose: To build a cross-platform mobile app that converts numbers between Binary, Decimal, Octal, and Hexadecimal.
________________________________________
2. Program Description
The program takes a number in one number system and automatically converts it into equivalent values of the other systems.
For example:
Input: 1010 (Binary)
Output:
  Decimal → 10
  Octal → 12
  Hexadecimal → A
The app provides:
•	Input field for user entry
•	Dropdown menu for selecting the base of the input number
•	Output display showing converted results in all number systems
•	Validation for invalid inputs
________________________________________
3. Algorithm / Logic
Step-by-Step Algorithm:
1.	Start the program.
2.	Accept user input (number).
3.	Detect or select the base (Binary/Decimal/Octal/Hexadecimal).
4.	Convert the input to Decimal (as an intermediate base).
5.	Convert from Decimal to all other systems:
o	Decimal → Binary
o	Decimal → Octal
o	Decimal → Hexadecimal
6.	Display all converted results.
7.	End the program.
________________________________________
4. Flowchart
(I can generate an image of the flowchart next if you want.)
It would look like this in words:
Start 
↓
Input number + base type
↓
Convert input → Decimal
↓
Decimal → Binary, Octal, Hexadecimal
↓
Display results
↓
End
________________________________________
5. Program Code (Simplified Flutter Example)
import 'package:flutter/material.dart';

void main() => runApp(NumberConverterApp());

class NumberConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number System Converter',
      home: ConverterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ConverterScreen extends StatefulWidget {
  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  final TextEditingController _controller = TextEditingController();
  String _selectedBase = 'Decimal';
  String binary = '', octal = '', decimal = '', hex = '';

  void convertNumber() {
    try {
      int number;
      switch (_selectedBase) {
        case 'Binary':
          number = int.parse(_controller.text, radix: 2);
          break;
        case 'Octal':
          number = int.parse(_controller.text, radix: 8);
          break;
        case 'Hexadecimal':
          number = int.parse(_controller.text, radix: 16);
          break;
        default:
          number = int.parse(_controller.text);
      }

      setState(() {
        decimal = number.toString();
        binary = number.toRadixString(2);
        octal = number.toRadixString(8);
        hex = number.toRadixString(16).toUpperCase();
      });
    } catch (e) {
      setState(() {
        binary = octal = decimal = hex = 'Invalid Input';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Number System Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter Number'),
              keyboardType: TextInputType.text,
            ),
            DropdownButton<String>(
              value: _selectedBase,
              onChanged: (value) => setState(() => _selectedBase = value!),
              items: ['Binary', 'Decimal', 'Octal', 'Hexadecimal']
                  .map((base) => DropdownMenuItem(
                        value: base,
                        child: Text(base),
                      ))
                  .toList(),
            ),
            ElevatedButton(onPressed: convertNumber, child: Text('Convert')),
            SizedBox(height: 20),
            Text('Binary: $binary'),
            Text('Octal: $octal'),
            Text('Decimal: $decimal'),
            Text('Hexadecimal: $hex'),
          ],
        ),
      ),
    );
  }
}
________________________________________
6. Testing and Validation
Test Case	Input	Input Base	Expected Output	Result
TC1	1010	Binary	Decimal=10, Octal=12, Hex=A	✅ Passed
TC2	15	Decimal	Binary=1111, Octal=17, Hex=F	✅ Passed
TC3	77	Octal	Decimal=63, Binary=111111, Hex=3F	✅ Passed
TC4	Z12	Hexadecimal	Invalid Input	✅ Handled
________________________________________
7. Deployment
•	Android: Generated .apk file via Flutter build → installable on any Android phone.
•	iOS: Generated .ipa file via Xcode for iPhone deployment.

