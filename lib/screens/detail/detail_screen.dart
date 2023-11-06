import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen({super.key});

  final WordResponse wordResponse;

  DetailScreen(this.wordResponse);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Container(
        child: Column(
          children: [
            Text(
              "${wordResponse.word}",
              style: TextStyle(color: Colors.white, fontSize: 36),
            ),
            SizedBox(
              height: 16,
            ),
Expanded (
child: ListView.separated(
  itemBuilder: (context, index) {

  final meaning = WordResponse.meanings[index];
  final definations = meaning.definitions;
  return Column(
crossAxisAlignment: CrossAxisAlignment.start,

children: [
  Text(meaning.partOfSpeech, style:const  TextStyle(color: Colors.white),),
const   SizedBox(height: 8,),
  ListView.separated(itemBuilder: (context, index) => Column(
    children: [
Text("Defination: " + definations[index].defination),
 const SizedBox(height: 4,),
Text("Sentence:  ${definations[index].example}") ,  
  ],
  crossAxisAlignment: CrossAxisAlignment.start,
  ),
   separatorBuilder: (context, index) =>SizedBox(height: 20,),
   itemCount: definations.length,
   shrinkWrap: true,
  )
],



  );


}, itemCount: wordResponse.meanings.length,
separatorBuilder: (context, index) => const SizedBox(height: 32,), )



),



          ],
        ),
      ),
    );
  }
}
