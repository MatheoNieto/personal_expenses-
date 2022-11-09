import 'package:flutter/material.dart';
import 'widgets/Trasaction_list.dart';
import 'widgets/CreateTransaction.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money App'),
      ),
      body: Column(
        children: [
          CreateTransaction(),
          TransactionList()
        ],
      ),
    );
  }
}