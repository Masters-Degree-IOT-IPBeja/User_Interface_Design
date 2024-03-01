import 'package:flutter/material.dart';
import 'package:supraiot/classes/app_bar_with_help_button.dart';
import 'package:supraiot/classes/messages_text.dart';
import 'body/body_parking_page.dart';
import 'package:supraiot/classes/rodape.dart';
import 'package:supraiot/classes/customParkingPageBodies.dart';

class ParkingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithHelpButton(
        titleText: 'Localização de lugares', // Adiciona o título da página
        helpButtonText: 'Ajuda',
        helpDialogChildren: HelpDialogTexts.parkingPageHelpTexts(),
        closeButtonLabel: 'Fechar',
        backgroundColor: Colors.blue,
      ),
      body: Column( // Usa um Column para empilhar os widgets
        crossAxisAlignment: CrossAxisAlignment.stretch, // Define o alinhamento dos filhos para esticar horizontalmente
        children: [
          Expanded(
            child: CustomParkingPageBodies(),
          ),
          Rodape(), // Adiciona o rodapé
        ],
      ),
    );
  }
}
