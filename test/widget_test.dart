// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:automatic_number_system_converter/main.dart';

void main() {
  testWidgets('Number converter smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(NumberConverterApp());

    // Verify that the app title is present.
    expect(find.text('Number System Converter'), findsOneWidget);

    // Verify initial state of outputs.
    expect(find.text('Binary: '), findsOneWidget);
    expect(find.text('Octal: '), findsOneWidget);
    expect(find.text('Decimal: '), findsOneWidget);
    expect(find.text('Hexadecimal: '), findsOneWidget);

    // Enter a number and convert.
    await tester.enterText(find.byType(TextField), '10');
    await tester.tap(find.byIcon(Icons.swap_horiz));
    await tester.pump();

    // Verify conversion results.
    expect(find.text('Binary: 1010'), findsOneWidget);
    expect(find.text('Octal: 12'), findsOneWidget);
    expect(find.text('Decimal: 10'), findsOneWidget);
    expect(find.text('Hexadecimal: A'), findsOneWidget);
  });
}
