import 'package:flutter/material.dart';

class Elevatebuttonpage extends StatelessWidget {
  const Elevatebuttonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Elevate Button Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This the page opened by ElevateButtonPage'),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                "opened Evevate Page",
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
