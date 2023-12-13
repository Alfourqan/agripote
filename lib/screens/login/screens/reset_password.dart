import 'package:agripote/constants.dart';
import 'package:agripote/screens/login/screens/login_screen.dart';
import 'package:agripote/screens/login/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Réinitialisation de mot de passe'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Entrez l\'adresse e-mail associée à votre compte pour recevoir un lien de réinitialisation de mot de passe.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              TextFieldContainer(
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Adresse e-mail',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une adresse e-mail valide.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      _email = value!;
                    });
                  },
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Envoyer un e-mail de réinitialisation de mot de passe à l'utilisateur
                  }
                },
                child: Text('Envoyer le lien de réinitialisation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
