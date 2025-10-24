import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sandwich Shop App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Sandwich Counter')),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                OrderItemDisplay(3, 'BLT'),
                OrderItemDisplay(5, 'Club'),
                OrderItemDisplay(2, 'Veggie'),
                // use Expanded to force each item to share space
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderItemDisplay extends StatelessWidget {
  final String itemType;
  final int quantity;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      margin: const EdgeInsets.all(8),
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        '$quantity $itemType Sandwich(es): ${'🥪' * quantity}',
        textAlign: TextAlign.center,
      ),
    );
  }
}
