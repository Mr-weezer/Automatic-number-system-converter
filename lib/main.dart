import 'package:flutter/material.dart';

void main() => runApp(NumberConverterApp());

class NumberConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number System Converter',
      theme: ThemeData.dark(), // Apply dark theme for overall black background
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
      appBar: AppBar(
        title: Text('Number System Converter'),
        backgroundColor: Colors.black87, // Darker app bar for consistency
      ),
      backgroundColor: Colors.black, // Explicit black background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.grey[900], // Dark card for input
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Enter Number',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: DropdownButton<String>(
                  value: _selectedBase,
                  dropdownColor: Colors.grey[900],
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) => setState(() => _selectedBase = value!),
                  items: [
                    DropdownMenuItem(
                      value: 'Binary',
                      child: Row(
                        children: [
                          Icon(Icons.code, color: Colors.blue),
                          SizedBox(width: 10),
                          Text('Binary'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Decimal',
                      child: Row(
                        children: [
                          Icon(Icons.looks_one, color: Colors.green),
                          SizedBox(width: 10),
                          Text('Decimal'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Octal',
                      child: Row(
                        children: [
                          Icon(Icons.looks_two, color: Colors.orange),
                          SizedBox(width: 10),
                          Text('Octal'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Hexadecimal',
                      child: Row(
                        children: [
                          Icon(Icons.looks_3, color: Colors.purple),
                          SizedBox(width: 10),
                          Text('Hexadecimal'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: convertNumber,
              icon: Icon(Icons.swap_horiz),
              label: Text('Convert'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    color: Colors.grey[900],
                    child: ListTile(
                      leading: Icon(Icons.code, color: Colors.blue),
                      title: Text('Binary: $binary', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Card(
                    color: Colors.grey[900],
                    child: ListTile(
                      leading: Icon(Icons.looks_two, color: Colors.orange),
                      title: Text('Octal: $octal', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Card(
                    color: Colors.grey[900],
                    child: ListTile(
                      leading: Icon(Icons.looks_one, color: Colors.green),
                      title: Text('Decimal: $decimal', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Card(
                    color: Colors.grey[900],
                    child: ListTile(
                      leading: Icon(Icons.looks_3, color: Colors.purple),
                      title: Text('Hexadecimal: $hex', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
