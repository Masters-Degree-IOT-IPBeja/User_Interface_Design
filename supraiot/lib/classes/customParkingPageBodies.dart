import 'dart:math';
import 'package:flutter/material.dart';
import 'package:supraiot/pages/body/body_parking_page.dart'; // Importe a classe ParkingPageBody aqui

class CustomParkingPageBodies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gerando um número aleatório entre 1 e 3 para escolher o conjunto de dados
    int randomNumber = Random().nextInt(3) + 1;

    // Retornando o conjunto de dados com base no número aleatório gerado
    return randomNumber == 1
        ? _buildParkingPageBody1()
        : randomNumber == 2
        ? _buildParkingPageBody2()
        : _buildParkingPageBody3();
  }

  // Métodos privados para construir cada conjunto de dados
  Widget _buildParkingPageBody1() {
    return ParkingPageBody(
      totalVagasDisponiveis: '10',
      arrayA: ['9'],
      arrayB: ['5', '9', '13'],
      arrayC: [],
      arrayD: ['8'],
      arrayE: ['3', '5', '6', '9', '10'],
      imagePath: 'assets/parking/parque10lugares.png',
    );
  }

  Widget _buildParkingPageBody2() {
    return ParkingPageBody(
      totalVagasDisponiveis: '0',
      arrayA: [],
      arrayB: [],
      arrayC: [],
      arrayD: [],
      arrayE: [],
      imagePath: 'assets/parking/parqueCompleto.png',
    );
  }

  Widget _buildParkingPageBody3() {
    return ParkingPageBody(
      totalVagasDisponiveis: '5',
      arrayA: ['9'],
      arrayB: ['5', '9', '13'],
      arrayC: [],
      arrayD: ['8'],
      arrayE: [],
      imagePath: 'assets/parking/parque5lugares.png',
    );
  }
}
