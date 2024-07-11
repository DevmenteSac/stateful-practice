import 'package:flutter/material.dart';
import 'package:stateful_practice/screens/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key, required this.counter});

  // Aqui recibo el estado
  final int counter;

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
        title: const Text("Stateful Practice Pagina 1"),
        actions: [
          IconButton(
              onPressed: () {
                // Aqui paso el estado
                _navigate(context, Page2(counter: widget.counter));
              },
              icon: const Icon(Icons.looks_two_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // Aqui veo el estado
              widget.counter.toString(),
              style: const TextStyle(fontSize: 100),
            ),
          ],
        ),
      ),
    );
  }
}
