import 'package:flutter/material.dart';

class RecuperarSanguchitos extends StatefulWidget {
  const RecuperarSanguchitos({Key? key}) : super(key: key);

  @override
  _RecuperarSanguchitosState createState() => _RecuperarSanguchitosState();
}

class _RecuperarSanguchitosState extends State<RecuperarSanguchitos> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar Sanguchitos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Correo electrónico',
                  hintText: 'example@example.com',
                ),
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
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Aquí se puede agregar el código para recuperar la cuenta
                    // Usar _emailController.text para obtener el correo electrónico
                  }
                },
                child: const Text('Recuperar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
