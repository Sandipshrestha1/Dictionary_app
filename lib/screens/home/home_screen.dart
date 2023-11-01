import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  getDictionaryFormWidget(context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Spacer(),
            Text(
              "Dictionary App",
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Search any word you want quickely",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search a Word",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                filled: true,
                fillColor: Colors.grey[100],
                prefixIcon: Icon(Icons.search),
                // hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      padding: const EdgeInsets.all(16)),
                  child: const Text("SEARCH"),
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: getDictionaryFormWidget(context),
    );
  }
}
