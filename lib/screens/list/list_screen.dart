// import 'package:dictionary_app/screens/detail/detail_screen.dart';
// import 'package:flutter/material.dart';

// class ListScreen extends StatelessWidget {
//   const ListScreen({super.key});

//   final List<WordResponse> words;

//   ListScreen(this.words);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[900],
//       body: ListView.separated(
//         itemBuilder: (context, index) => ListTile(
//           title: Text("${index+1}. ${words[index].word }" ,style: TextStyle(color: Colors.white)),
        
//         onTap: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(words[index])),);
//         },
        
//         ),
//         separatorBuilder: (context, index) => Divider(
//           color: Colors.grey,
//         ),
//         itemCount: words.length,
//       ),
//     );
//   }
// }


import 'package:dictionary_app/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<WordResponse> words;

  ListScreen({Key? key, required this.words}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text("${index + 1}. ${words[index].word}", style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(wordResponse: words[index]),
              ),
            );
          },
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
        itemCount: words.length,
      ),
    );
  }
}

