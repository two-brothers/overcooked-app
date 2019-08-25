import 'package:flutter/material.dart';
import 'package:overcooked/app/list/list_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Overcooked',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Overcooked'),
        ),
        body: List(),
      ),
    );
  }
}
