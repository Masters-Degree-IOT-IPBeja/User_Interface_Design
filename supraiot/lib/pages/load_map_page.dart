import 'package:flutter/material.dart';
import 'dart:async';
import 'parking_page.dart';
import '../classes/app_bar_load_map.dart';
import 'body/body_load_map.dart';

class LoadMapPage extends StatefulWidget {
  @override
  _LoadMapPageState createState() => _LoadMapPageState();
}

class _LoadMapPageState extends State<LoadMapPage> {
  @override
  void initState() {
    super.initState();
    // Iniciar o temporizador (timer) de 2 segundos
    Timer(const Duration(seconds: 2), () {
      // Navegar para a página parking_page.dart após 2 segundos
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ParkingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSimple(
        titleText: 'Carregando Mapa',
        backgroundColor: Colors.blue,
      ),
      body: BodyLoadMap(),
    );
  }
}
