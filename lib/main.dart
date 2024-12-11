import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutScreen()),
              );
            },
            icon: Hero(
              tag: 'img',
              child: Image.asset(
                'assets/bag.jpg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      body: Center(
        child: Hero(
          tag: 'img',
          child: Image.asset(
            'assets/bag.jpg',
            height: 400,
            width: 400,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
