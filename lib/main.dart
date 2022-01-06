import 'dart:async';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    super.initState();

    _loading = false;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () => setState(() {
                _loading = !_loading;
                _updateProgress();
              }),
              child: const Icon(Icons.cloud_download),
            ),
            appBar: AppBar(
              title: const Text('My first app'),
              centerTitle: true,
            ),
            backgroundColor: Colors.indigo,
            body: Center(
                child: Container(
                    padding: const EdgeInsets.all(16),
                    child: _loading
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LinearProgressIndicator(value: _progressValue),
                              Text('${(_progressValue * 100).round()}%',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20))
                            ],
                          )
                        : const Text('Press button to download',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20))))));
  }

  void _updateProgress() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _progressValue += 0.2;

        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          timer.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
