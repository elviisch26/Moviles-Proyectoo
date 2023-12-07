// main.dart
import 'package:flutter/material.dart';
import 'package:proyecto/screens/Clasicos.dart';
import 'package:proyecto/screens/Login.dart';
import 'package:proyecto/screens/Register.dart';
import 'package:proyecto/screens/payment.dart';
import 'screens/Login.dart';  // Importa la pantalla que creamos
import 'screens/Recuperar.dart';  // Importa la pantalla que creamos

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
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
      home: SignUpScreen(),
      routes: {
        '/Recuperar.dart': (context) => RecuperarSanguchitos(),
        '/Register.dart': (context) => SignUpScreen(),
        '/Clasicos.dart': (context) => SanguchitosScreen(),
        '/payment.dart': (context) => PaymentScreen(),
        '/Login.dart': (context) => LoginScreen(),

        
        
      },
    );
  }
}
