import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  final String title;
  final int value;
  final Function(int) onChanged;
  final bool enabled;
  final int minValue;
  final int maxValue;
  final int stepValue;
  final String hintText;
  final String helperText;
  final BuildContext context;

  const SettingsSection({
    required this.title,
    required this.value,
    required this.onChanged,
    this.enabled = true,
    this.minValue = 0,
    this.maxValue = 100,
    this.stepValue = 1,
    required this.hintText,
    required this.helperText,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            // Mostrar o popup de descrição
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
              onPressed: enabled && value > minValue ? () => onChanged(value - stepValue) : null,
              icon: const Icon(Icons.remove),
            ),
            Expanded(
              child: Container(
                width: 50, // Largura da caixa de texto
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
                    helperText: helperText, // Usando helperText para mostrar o texto de ajuda
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: enabled && value < maxValue ? () => onChanged(value + stepValue) : null,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
