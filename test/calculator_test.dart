import 'package:dars__4/controller/calculator_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("kalkulyatorni qoshish funksiasini tekshirish", () {
    final calculiyator = CalculatorController();
    expect(calculiyator.add(5, 6), equals(11));
    expect(calculiyator.add(-5, 6), equals(1));
    expect(calculiyator.add(5, -6), equals(-1));
    expect(calculiyator.add(0, 6), equals(6));
  });
  test("kalkulyatorni ayrish funksiasini tekshirish", () {
    final calculiyator = CalculatorController();
    expect(calculiyator.subtruct(5, 6), equals(-1));
    expect(calculiyator.subtruct(-5, 6), equals(-11));
    expect(calculiyator.subtruct(5, -6), equals(11));
    expect(calculiyator.subtruct(0, 6), equals(-6));
  });
  test("kalkulyatorni kopaytirish funksiasini tekshirish", () {
    final calculiyator = CalculatorController();
    expect(calculiyator.multiplay(5, 6), equals(30));
    expect(calculiyator.multiplay(-5, 6), equals(-30));
    expect(calculiyator.multiplay(-5, -6), equals(30));
    expect(calculiyator.multiplay(0, 6), equals(0));
  });
  test("kalkulyatorni bolish funksiasini tekshirish", () {
    final calculiyator = CalculatorController();
    expect(calculiyator.deverse(10, 5), equals(2));
    expect(calculiyator.deverse(-6, 2), equals(-3));
    expect(calculiyator.deverse(-30, -6), equals(5));
    expect(calculiyator.deverse(42, 6), equals(7));
  });
}
