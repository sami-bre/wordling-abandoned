import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {'/': (context) => SearchPage()},
    ),
  );
}

class SearchPage extends StatefulWidget {
  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wordling'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildSearchArea(),
          ],
        ),
      ),
    );
  }
}

Widget buildSearchArea() {
  return SizedBox(
    height: 50.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
                label: Text("Define"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ))),
          ),
        ),
        SizedBox(
          width: 58,
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            child: const Icon(Icons.search),
          ),
        ),
      ],
    ),
  );
}
