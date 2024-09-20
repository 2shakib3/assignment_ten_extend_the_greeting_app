import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Center(
          child: GreetingWidget(),
        ),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hello, World!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Welcome to Flutter!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 24),
        Image.asset(
          'assets/flutter_logo.png',
          height: 150,
        ),
        SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Button Pressed!'),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: Text(
            'Press Me',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
