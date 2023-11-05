import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final List<WordResponse> words;

  ListScreen(this.words);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      itemBuilder: (context, index) => ListTile(),
      separatorBuilder: (context, index) => Divider(color: Colors.grey,),
      itemCount: words.length,

    ),);
  }
}
