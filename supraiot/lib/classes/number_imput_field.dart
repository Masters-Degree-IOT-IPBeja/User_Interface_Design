import 'package:flutter/material.dart';

class NumberInputField extends StatelessWidget {
  final String title;
  final int value;
  final Function(int) onChanged;
  final int minValue;
  final int maxValue;
  final int stepValue;
  final String hintText;
  final String helperText;

  const NumberInputField({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
    required this.minValue,
    required this.maxValue,
    this.stepValue = 1,
    required this.hintText,
    required this.helperText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(title),
                  content: Text(helperText),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Fechar'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text(title),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            IconButton(
              onPressed: value > minValue ? () => onChanged(value - stepValue) : null,
              icon: const Icon(Icons.remove),
            ),
            Expanded(
              child: Container(
                width: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  controller: TextEditingController(text: value.toString()),
                  onChanged: (newValue) {
                    if (newValue.isNotEmpty) {
                      int parsedValue = int.tryParse(newValue) ?? value;
                      if (parsedValue >= minValue && parsedValue <= maxValue) {
                        onChanged(parsedValue);
                      }
                    }
                  },
                  decoration: InputDecoration(
                    hintText: hintText,
                    helperText: helperText,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: value < maxValue ? () => onChanged(value + stepValue) : null,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}