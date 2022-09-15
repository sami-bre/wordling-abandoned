import 'package:flutter/material.dart';

import 'search_page.dart';
import 'result_page.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => SearchPage(),
        '/result': (context) => ResultPage(),
      },
    ),
  );
}
