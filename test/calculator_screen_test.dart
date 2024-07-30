import 'package:dars4/screen/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    "qo'shish ayrish buttonlarini tekshirish",
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CalculatorScreen(),
        ),
      );
      expect(find.byType(FilledButton), findsNWidgets(2));
      expect(find.byKey(const ValueKey("ayrish")), findsOneWidget);
      expect(find.byKey(const ValueKey("qo'shish")), findsOneWidget);
    },
  );
}
