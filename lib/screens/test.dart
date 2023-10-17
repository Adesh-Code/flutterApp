import 'package:flutter/material.dart';

class MyScaffoldApp extends StatelessWidget {
  const MyScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.amber.shade300,
            size: 22,
          ),
          title: const Text('App Bar'),
          // centerTitle: true,
          bottom: const PreferredSize(
            preferredSize: Size(22, 50),
            child: Text(
              'Bottom',
              style: TextStyle(color: Colors.red),
            ),
          ),
          backgroundColor: Colors.black87,
          titleTextStyle: const TextStyle(color: Colors.white),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () => <Null>{},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
              ),
              child: const Text('One'),
            ),
            ElevatedButton(
                onPressed: () => <Null>{},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800,
                ),
                child: const Text('Two')),
          ],
          // flexibleSpace: const Text(
          //   'empty',
          //   style: TextStyle(color: Colors.white),
          // ),
        ),
        body: const Text('Body'));
  }
}
