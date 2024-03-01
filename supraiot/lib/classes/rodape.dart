import 'package:flutter/material.dart';
import 'package:supraiot/pages/setup_page.dart';
import 'package:supraiot/pages/parking_page.dart';
import 'package:supraiot/pages/account_page.dart';

class Rodape extends StatelessWidget {
  static const Color iconAndTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // Altura fixa do rodapé
      color: Colors.blue, // Cor de fundo do rodapé
      width: double.infinity, // Largura total da tela
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Espaçamento uniforme entre os elementos
        children: [
          // Botão "Início"
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParkingPage()),
                  );
                },
                icon: Icon(
                  Icons.home,
                  color: iconAndTextColor,
                ),
              ),
              Text(
                'Início',
                style: TextStyle(
                  color: iconAndTextColor,
                ),
              ),
            ],
          ),
          // Botão "Ajuda"
          /*Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Adicione aqui a ação para abrir a tela de ajuda
                },
                icon: Icon(
                  Icons.help,
                  color: iconAndTextColor,
                ),
              ),
              Text(
                'Ajuda',
                style: TextStyle(
                  color: iconAndTextColor,
                ),
              ),
            ],
          ),*/
          // Botão "Configurações"
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SetupPage()),
                  );
                },
                icon: Icon(
                  Icons.settings,
                  color: iconAndTextColor,
                ),
              ),
              Text(
                'Configurações',
                style: TextStyle(
                  color: iconAndTextColor,
                ),
              ),
            ],
          ),
          // Botão "Conta"
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
                  );
                },
                icon: Icon(
                  Icons.account_circle,
                  color: iconAndTextColor,
                ),
              ),
              Text(
                'Conta',
                style: TextStyle(
                  color: iconAndTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
