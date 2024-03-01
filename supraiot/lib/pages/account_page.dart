import 'package:flutter/material.dart';
import 'package:supraiot/classes/app_bar_with_help_button.dart';
import 'package:supraiot/classes/messages_text.dart';
import 'package:supraiot/classes/rodape.dart';
import 'package:supraiot/pages/login_page.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithHelpButton(
        titleText: 'Conta do utilizador', // Adiciona o título da página
        helpButtonText: 'Ajuda',
        helpDialogChildren: HelpDialogTexts.initialHelpTexts(),
        closeButtonLabel: 'Fechar',
        backgroundColor: Colors.blue,
      ),
      body: Column( // Usa um Column para empilhar os widgets
        crossAxisAlignment: CrossAxisAlignment.stretch, // Define o alinhamento dos filhos para esticar horizontalmente
        children: [
          Expanded(
            child:       Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );// Adicione aqui o código para sair da página ou aplicativo
                },
                child: Text('Sair'),
              ),
            ), // Utiliza o corpo da página
          ),
          Rodape(), // Adiciona o rodapé
        ],
      ),
    );
  }
}
