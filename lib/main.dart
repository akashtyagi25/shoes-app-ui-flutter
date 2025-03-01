import 'package:flutter/material.dart';
import 'package:project8/cart.dart';
import 'package:project8/intropage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Cart(),
    builder: (context,child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    )
    );
  }
}