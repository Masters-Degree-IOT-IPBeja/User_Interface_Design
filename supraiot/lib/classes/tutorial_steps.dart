import 'package:flutter/material.dart';
import 'tutorial_steps.dart'; // Importe a página do tutorial

class InteractiveTutorialPage extends StatefulWidget {
  @override
  _InteractiveTutorialPageState createState() => _InteractiveTutorialPageState();
}

class _InteractiveTutorialPageState extends State<InteractiveTutorialPage> {
  int _currentPageIndex = 0;

  final List<String> _tutorialSteps = [
    'Passo 1: Primeira etapa do tutorial.',
    'Passo 2: Segunda etapa do tutorial.',
    'Passo 3: Terceira etapa do tutorial.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial Interativo'),
      ),
      body: Column(
        children: [
          // Conteúdo do tutorial
          Center(
            child: Text(
              _tutorialSteps[_currentPageIndex],
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          // Botões de navegação
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _currentPageIndex > 0 ? _previousStep : null,
                child: Text('Anterior'),
              ),
              const SizedBox(width: 20.0),
              ElevatedButton(
                onPressed: _currentPageIndex < _tutorialSteps.length - 1 ? _nextStep : null,
                child: Text('Próximo'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _nextStep() {
    setState(() {
      _currentPageIndex++;
    });
  }

  void _previousStep() {
    setState(() {
      _currentPageIndex--;
    });
  }
}


