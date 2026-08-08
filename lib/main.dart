import 'package:flutter/material.dart';
import 'login/login_page.dart'; // Apontando para a nova tela de login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brazilian Glow Up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(), // Inicia na tela de login
    );
  }
}