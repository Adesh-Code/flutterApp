import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
            border: Border.symmetric(),
            image: DecorationImage(
                image: AssetImage('assets/images/bg-login-screen.png'),
                alignment: Alignment(0, -1),
                fit: BoxFit.contain)),
        child: Center(
            child: ElevatedButton(
                onPressed: () =>
                    {Navigator.popAndPushNamed(context, '/loginPage')},
                child: const Text('Login'))),
      ),
    );
  }
}
