// main.dart
import 'package:flutter/material.dart';
import 'package:proyecto/screens/Clasicos.dart';
import 'package:proyecto/screens/Login.dart';
import 'package:proyecto/screens/Register.dart';
import 'package:proyecto/screens/payment.dart';
import 'screens/Login.dart';  // Importa la pantalla que creamos
import 'screens/Recuperar.dart';  // Importa la pantalla que creamos

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Cambia MyHomePage por HomeScreen como pantalla principal
      home: LoginScreen(),
      routes: {
        '/Recuperar.dart': (context) => RecuperarSanguchitos(),
        '/Register.dart': (context) => RegisterScreen(),
        '/Clasicos.dart': (context) => SanguchitosScreen(),
        '/payment.dart': (context) => PaymentScreen(),
        
        
      },
    );
  }
}
