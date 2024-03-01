import 'package:flutter/material.dart';
import 'dart:io';

import '../load_map_page.dart';
import '../../classes/text_format.dart';

class BodyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String email = '';
    String senha = '';

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/supraIot.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            const SizedBox(height: 20),
            const Text(
              'Localizador de lugar IOT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    onChanged: (value) {
                      senha = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      String nomeUsuario = await verificarLogin(email, senha);
                      if (nomeUsuario.isNotEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Bem-vindo, $nomeUsuario!'),
                              content: Text('Login bem-sucedido.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => LoadMapPage()),
                                    );
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Email ou senha incorretos'),
                          ),
                        );
                      }
                    },
                    child: Text('Fazer Login'),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Implementar ação para o botão de se cadastrar
                    },
                    child: const Text('Não tem uma conta? Cadastre-se'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> verificarLogin(String email, String senha) async {
    // Simulando uma lista de credenciais válidas
    Map<String, String> credenciaisValidas = {
      'utilizador1@email.com': 'senha123',
      'utilizador2@email.com': 'abc123',
      'utilizador3@email.com': 'qwerty',
      'user': 'pass',
    };

    // Verifica se o email está na lista de credenciais válidas
    if (credenciaisValidas.containsKey(email)) {
      // Verifica se a senha corresponde ao email fornecido
      if (credenciaisValidas[email] == senha) {
        return email.split('@')[0]; // Retorna o nome do usuário
      }
    }

    return ''; // Retorna string vazia se o login for inválido
  }
}
