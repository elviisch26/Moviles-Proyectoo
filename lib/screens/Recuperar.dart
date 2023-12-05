// screens/recuperar_sanguchitos.dart
import 'package:flutter/material.dart';

class RecuperarSanguchitos extends StatefulWidget {
  const RecuperarSanguchitos({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RecuperarSanguchitosState createState() => _RecuperarSanguchitosState();
}

class _RecuperarSanguchitosState extends State<RecuperarSanguchitos> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar Sanguchitos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Correo electrónico',
                hintText: 'example@example.com',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Aquí va el código para recuperar la cuenta
              },
              child: const Text('Recuperar'),
            ),
          ],
        ),
      ),
    );
  }
}
