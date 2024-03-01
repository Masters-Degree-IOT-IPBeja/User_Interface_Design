import 'package:flutter/material.dart';
import 'package:supraiot/classes/app_bar_with_help_button.dart';
import 'package:supraiot/classes/messages_text.dart';
import 'package:supraiot/classes/rodape.dart';
import 'package:supraiot/pages/body/body_setup_page.dart';

class SetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithHelpButton(
        titleText: 'Preferências de notificações', // Adiciona o título da página
        helpButtonText: 'Ajuda',
        helpDialogChildren: HelpDialogTexts.notificationSettingsHelpTexts(),
        closeButtonLabel: 'Fechar',
        backgroundColor: Colors.blue,
      ),
      body: Column( // Usa um Column para empilhar os widgets
        crossAxisAlignment: CrossAxisAlignment.stretch, // Define o alinhamento dos filhos para esticar horizontalmente
        children: [
          Expanded(
            child: SetupPageBody(), // Utiliza o corpo da página
          ),
          Rodape(), // Adiciona o rodapé
        ],
      ),
    );
  }
}
