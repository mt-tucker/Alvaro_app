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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyCounterPage(),
    );
  }
}

class MyCounterPage extends StatelessWidget {
  const MyCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Counter Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Current Counter Value'),
            Text('10'),
          ],
        ),
      ),
      floatingActionButton: Container(
        child: Column(
          
        children: [
          FloatingActionButton(
            onPressed: () {
              print("add");
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              print("add");
            },
            child: const Icon(Icons.add),
          ),),
        ],
      ),
    );
  }
}
