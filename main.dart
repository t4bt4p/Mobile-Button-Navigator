import 'package:flutter/material.dart';
import 'package:flutter_create_button_navigator_app/TextPage.dart';
import 'package:flutter_create_button_navigator_app/outlineButtonPage.dart';
import 'package:flutter_create_button_navigator_app/ElevateButtonPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

// Metthod สำหรับเปิดแต่ละหน้า
void _navigatopage(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Button Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                _navigatopage(context, TextPage());
              },
              child: const Text(
                "opened Text Page",
                style: TextStyle(color: Colors.green),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                _navigatopage(context, Outlinebuttonpage());
              },
              child: const Text("opened Outlined Page"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.orange,
                side: const BorderSide(color: Colors.orange, width: 1),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _navigatopage(context, Elevatebuttonpage());
              },
              child: const Text(
                "opened ElevatedButton Page",
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
