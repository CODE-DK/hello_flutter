import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: const FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.cloud_download),
            ),
            appBar: AppBar(
              title: const Text('My first app'),
              centerTitle: true,
            ),
            backgroundColor: Colors.indigo,
            body: Center(
                child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        LinearProgressIndicator(value: 23),
                        Text('23 %',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text('Press button to download',
                            style: TextStyle(color: Colors.white, fontSize: 20))
                      ],
                    )))));
  }
}
