import 'package:dars__4/controller/calculator_controller.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final birinchiController = TextEditingController();
  final ikkinchiController = TextEditingController();

  final calculator = CalculatorController();

  int? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                key: const ValueKey("birinchison"),
                controller: birinchiController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Birinchi raqam",
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                key: const ValueKey("ikkinchison"),
                controller: ikkinchiController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Ikkinchi raqam",
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  FilledButton(
                    key: const ValueKey("qo'shish"),
                    onPressed: () {
                      setState(() {
                        int birinchiRaqam = int.parse(birinchiController.text);
                        int ikkinchiRaqam = int.parse(ikkinchiController.text);
                        result = calculator.add(birinchiRaqam, ikkinchiRaqam);
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 20),
                  FilledButton(
                    key: const ValueKey("ayrish"),
                    onPressed: () {
                      setState(() {
                        int birinchiRaqam = int.parse(birinchiController.text);
                        int ikkinchiRaqam = int.parse(ikkinchiController.text);
                        result =
                            calculator.subtruct(birinchiRaqam, ikkinchiRaqam);
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (result != null)
                Text(
                  "Result: $result",
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
