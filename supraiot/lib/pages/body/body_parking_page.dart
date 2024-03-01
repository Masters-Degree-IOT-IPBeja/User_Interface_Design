import 'package:flutter/material.dart';

class ParkingPageBody extends StatelessWidget {
  final String totalVagasDisponiveis;
  final List<String> arrayA;
  final List<String> arrayB;
  final List<String> arrayC;
  final List<String> arrayD;
  final List<String> arrayE;
  final String imagePath;

  ParkingPageBody({
    required this.totalVagasDisponiveis,
    required this.arrayA,
    required this.arrayB,
    required this.arrayC,
    required this.arrayD,
    required this.arrayE,
    required this.imagePath,
  });

  String getTextFromArray(List<String> array) {
    if (array.isEmpty) {
      return 'Nenhum lugar disponivel';
    } else if (array.length <= 3) {
      return array.join(', ');
    } else {
      return 'Mais de 3 lugares disponiveis.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mapa do Estacionamento',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      totalVagasDisponiveis == 0
                          ? 'Nenhum lugar disponível atualmente.'
                          : '$totalVagasDisponiveis Lugares disponíveis atualmente.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'A - ',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(getTextFromArray(arrayA)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'B - ',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(getTextFromArray(arrayB)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'C - ',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(getTextFromArray(arrayC)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'D - ',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(getTextFromArray(arrayD)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'E - ',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(getTextFromArray(arrayE)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
