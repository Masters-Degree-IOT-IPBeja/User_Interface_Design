import 'package:flutter/material.dart';
import '../classes/app_bar_with_help_button.dart';
import 'body/body_login_page.dart';
import '../classes/messages_text.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithHelpButton(
        helpButtonText: 'Ajuda',
        helpDialogChildren: HelpDialogTexts.initialHelpTexts(),
        closeButtonLabel: 'Fechar',
      ),
      body: BodyLoginPage(),
    );
  }
}