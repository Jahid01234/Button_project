import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Button',
        home: const MyHomePage(),
        debugShowCheckedModeBanner: false);
  }
}

MySnackBar(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = TextButton.styleFrom(
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.black,
      foregroundColor: Colors.deepOrange,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2))),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Flutter Demo Button Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                MySnackBar('Text', context);
              },
              child: Text('Button'),
              style: buttonStyle,
            ),
            ElevatedButton(
              onPressed: () {
                MySnackBar('Elevated', context);
              },
              child: Text(
                'Button',
                style: TextStyle(
                    color: Colors.cyan,
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            OutlinedButton(
              onPressed: () {MySnackBar('Outlined', context);}, child: Text('Button'),
            )
          ],
        ),
      ),
    );
  }
}
