import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login Page')),
        body: const LoginStates());
  }
}

class LoginStates extends StatefulWidget {
  const LoginStates({super.key});

  @override
  State<StatefulWidget> createState() => _LoginStates();
}

class _LoginStates extends State<LoginStates> {
  String username = '';
  String password = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter a username',
            ),
            onChanged: (String value) => username = value,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter a password',
            ),
            onChanged: (String value) => password = value,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.popAndPushNamed(context, '/galleryPage');
                }
              },
              child: const Text('Login'))
        ],
      ),
    );
  }
}
