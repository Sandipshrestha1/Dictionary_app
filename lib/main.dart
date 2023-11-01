import 'package:dictionary_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DictionaryApp());
}
class DictionaryApp extends StatelessWidget {
  const DictionaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}