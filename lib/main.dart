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
