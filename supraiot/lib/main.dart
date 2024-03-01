import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/load_map_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Aplicativo',
      theme: ThemeData(
        // Define a cor primária para o seu aplicativo
        primaryColor: Colors.blue,

        // Define o estilo de fonte para o seu aplicativo
        fontFamily: 'Roboto',

        // Define os temas de texto para várias partes do seu aplicativo
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          // Você pode definir outros estilos de texto conforme necessário
        ),

        // Define o brilho da interface do usuário do seu aplicativo
        brightness: Brightness.light,

        // Define o tema do botão padrão para o seu aplicativo
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),

        // Define o tema do cartão padrão para o seu aplicativo
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      // Defina a página inicial do seu aplicativo
      home: LoginPage(), // Você pode definir a página de login como a inicial, se desejar
    );
  }
}


