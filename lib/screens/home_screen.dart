import 'package:flutter/material.dart';
import 'package:stateful_practice/screens/page1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _navigate(BuildContext context, Widget child) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => child),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Stateful Practice"),
        actions: [
          IconButton(
              onPressed: () {
                // Aqui paso el estado
                _navigate(context, Page1(counter: _counter));
              },
              icon: const Icon(Icons.looks_one_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                _increment();
              },
              child: const Text("sumar"),
            ),
          ],
        ),
      ),
    );
  }
}
