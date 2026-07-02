import 'package:flutter/material.dart';

class Outlinebuttonpage extends StatelessWidget {
  const Outlinebuttonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('OutlineButtonPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This the page opened by OutlinedButton'),
            OutlinedButton(
              onPressed: () {},
              child: const Text("opened Outlined Page"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.orange,
                side: const BorderSide(color: Colors.orange, width: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
