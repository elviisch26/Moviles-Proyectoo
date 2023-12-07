// screens/login_screen.dart
import 'package:flutter/material.dart';
import 'Recuperar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sanguchitos'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, ingrese su correo electrónico';
                    }
                    if (!RegExp(r'\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b')
                        .hasMatch(value)) {
                      return 'Por favor, ingrese un correo electrónico válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, ingrese su contraseña';
                    }
                    // Agrega cualquier validación adicional para la contraseña si es necesario
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecuperarSanguchitos()),
                        );
                      },
                      child: Text('¿Has olvidado la contraseña?'),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Aquí puedes agregar la lógica para iniciar sesión con el correo y la contraseña ingresados
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      // En lugar de imprimir, puedes navegar a la ruta 'Clasicos.dart'
                      Navigator.pushNamed(context, '/Clasicos.dart');
                    }
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
                        // Agrega aquí la lógica para navegar a la página de Instagram
                      },
                      icon: Icon(Icons.telegram),
                    ),
                    IconButton(
                      onPressed: () {
                        // Agrega aquí la lógica para navegar a la página de Facebook
                      },
                      icon: Icon(Icons.facebook),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
