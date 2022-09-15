import 'package:flutter/material.dart';

import 'search_page.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {'/': (context) => SearchPage()},
    ),
  );
}