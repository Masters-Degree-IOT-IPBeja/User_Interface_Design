import 'package:flutter/material.dart';

class BodyLoadMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Texto acima da imagem do mapa
          const Text(
            'Carregando Mapa...',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20), // Espaçamento entre o texto e a imagem do mapa
          // Imagem estática do mapa
          Flexible(
            child: Image.asset('assets/map.png'),
          ),
          const SizedBox(height: 20), // Espaçamento entre a imagem do mapa e a barra de progresso
          // Barra de progresso para loading
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
