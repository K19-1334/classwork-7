import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart.dart';
import 'screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        return CartModel();
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shopping Cart',
      home: MyCatalog(),
    );
  }
}