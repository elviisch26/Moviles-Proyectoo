// screens/login_screen.dart
import 'package:flutter/material.dart';
import 'Recuperar.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sanguchitos'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                ),
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                        Navigator.pushNamed(context, '/Recuperar.dart');
                    },
                    child: Text('¿Has olvidado la contraseña?'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Clasicos.dart');
                },
                child: Text('Iniciar Sesión'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('¿Aún no tienes una cuenta?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Register.dart');
                    },
                    child: const Text('Registrarse'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Síguenos en nuestras redes:'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      // Aquí puedes agregar el código para navegar a la página de Instagram
                    },
                    icon: Icon(Icons.telegram),
                  ),
                  IconButton(
                    onPressed: () {
                      // Aquí puedes agregar el código para navegar a la página de Facebook
                    },
                    icon: Icon(Icons.facebook),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
