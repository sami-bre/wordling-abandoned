import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'card.dart';

class ResultPage extends StatefulWidget {
  ResultPageState createState() => ResultPageState();
}

class ResultPageState extends State<ResultPage> {
  Widget build(BuildContext context) {
    // I assume the argument always exists.
    String word = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: SingleChildScrollView(
              child: FutureBuilder(
                future: get(
                  Uri.parse(
                      'https://api.urbandictionary.com/v0/define?term=$word'),
                ),
                builder:
                    (BuildContext context, AsyncSnapshot<Response> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      List dataList = json.decode(snapshot.data!.body)['list'];
                      return Column(
                        children: [
                          for (Map<String, dynamic> item in dataList)
                            buildDefinitionCard(
                              context,
                              word: item['word'],
                              definition: item['definition'],
                              example: item['example'],
                            )
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return const Center(
                        child: Text('Connection problem.'),
                      );
                    }
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
