import 'package:flutter/material.dart';
import 'package:passing_data/main.dart';

class WelcomePage extends StatelessWidget {
  String name, email, phone;

  WelcomePage({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: ${name}'),
              Text('Email: ${email}'),
              Text('Phone: ${phone}'),
            ],
          ),
        ),
      ),
    );
  }
}

class GoBack extends StatefulWidget {
  const GoBack({super.key});

  @override
  State<GoBack> createState() => _GoBackState();
}

class _GoBackState extends State<GoBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To Home"),
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _mainState();
}

class _mainState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.teal[200],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.teal[200]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You are on Second Page",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
