import 'package:flutter/material.dart';
import 'package:flutter_flavours/core/flavor/flavors.dart';

class HomePage extends StatelessWidget {
  final String title;
  final String baseUrl;
  const HomePage({Key? key,required this.title,required this.baseUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(baseUrl),
      ),
    );
  }
}