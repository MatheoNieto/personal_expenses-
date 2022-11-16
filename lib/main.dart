import 'package:flutter/material.dart';
import 'widgets/Trasaction_list.dart';
import 'widgets/CreateTransaction.dart';
import '../models/transaction.dart';



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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', title: 'new shoes', amount: 69.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'weekly groceries', amount: 16.53, date: DateTime.now()),
  ];

  void updateTransactions(Transaction newTransaction){
    setState(() {
      _userTransactions.add(newTransaction);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money App'),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            CreateTransaction((newTransaction)=> updateTransactions(newTransaction)),
            TransactionList(_userTransactions),
          ],
        ),
      ),
    );
  }
}