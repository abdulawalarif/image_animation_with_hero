import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 const imageUrl = 'https://assets.bacancytechnology.com/qanda/wp-content/uploads/2024/08/20120657/Change-the-Background-Color-of-Elevated-Button-in-Flutter.jpg';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutScreen()),
                );
              },
              icon: Hero(
                tag: imageUrl,
                child: Image.network(
                  imageUrl,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
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
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Hero(
              tag: imageUrl,
              child: Image.network(
                imageUrl,
            height: 400,
            width: 400,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
