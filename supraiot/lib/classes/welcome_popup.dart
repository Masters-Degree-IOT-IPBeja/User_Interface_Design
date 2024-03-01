import 'package:flutter/material.dart';

class WelcomePopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Bem-vindo!'),
      content: Text('Olá! Bem-vindo à nossa aplicação.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Fechar'),
        ),
      ],
    );
  }
}

// Como chamar o popup após o login
// Suponha que após o login, você chame a função showWelcomePopup()
void showWelcomePopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return WelcomePopup();
    },
  );
}

// Exemplo de como usar após o login
void afterLogin(BuildContext context) {
  // Aqui você coloca a lógica de login
  // Após o login ser bem-sucedido, chame a função para exibir o popup de boas-vindas
  showWelcomePopup(context);
}