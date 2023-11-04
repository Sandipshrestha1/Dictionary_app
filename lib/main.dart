import 'package:dictionary_app/repo/word_repo.dart';
import 'package:dictionary_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/dictionary_cubit.dart';

void main() {
  runApp(const DictionaryApp());
}
class DictionaryApp extends StatelessWidget {
  const DictionaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        child: const HomeScreen(),
        create: (context) => DictionaryCubit(WordRepository()),
        
        ),

    );
  }
}