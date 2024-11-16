import 'package:flutter/material.dart';
import 'package:myapp/pantallas/home.dart';
import 'package:myapp/pantallas/jefe1.dart';
import 'package:myapp/pantallas/jefe2.dart';
import 'package:myapp/pantallas/jefe3.dart';
import 'package:myapp/pantallas/logo.dart';
import 'package:myapp/pantallas/welcome.dart';
import 'package:myapp/pantallas/login.dart';
import 'package:myapp/pantallas/registro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home: splash());
    //return MaterialApp(home: malditasea());}
    return MaterialApp(home: Logo());
  }
}

class InicioAlterno extends StatelessWidget {
  const InicioAlterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('inicio'),
      ),
      body: const Center(
        child: Text('Bienvenido a la aplicación!'),
      ),
    );
  }
}
