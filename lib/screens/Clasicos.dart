import 'package:flutter/material.dart';
import 'payment.dart';
class SanguchitosScreen extends StatelessWidget {
  const SanguchitosScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sanguchitos by Juli'),
        backgroundColor: Color.fromARGB(255, 28, 160, 149),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '¡Me emociona verte aquí!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el botón Clásicos
                },
                child: const Text('Clásicos'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/payment.dart');
                },
                child: const Text('Premium'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el botón Bebidas
                },
                child: const Text('Bebidas'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el botón EL BBQ
                },
                child: const Text('EL BBQ'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el botón O 4
                },
                child: const Text('O 4'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
