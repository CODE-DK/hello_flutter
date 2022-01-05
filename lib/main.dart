import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('Some appbar title'),
      centerTitle: true,
      backgroundColor: Colors.pink,
    ),
    backgroundColor: Colors.black,
    body: const Center(
        child: Text('Hello flutter',
            style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color: Colors.white
                ),
            textDirection: TextDirection.ltr)
            ),
  )));
}
