import 'package:flutter/material.dart';
import 'package:flutter_flavours/pages/home_page.dart';

import 'core/flavor/flavors.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        title: F.title,
        baseUrl: F.baseUrl
      ),
    );
  }
}
