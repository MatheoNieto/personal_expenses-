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

  void _startAddNewTransaction(BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_){
     return GestureDetector(behavior: HitTestBehavior.opaque, onTap: (){}, child:CreateTransaction((newTransaction)=> updateTransactions(newTransaction)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money App'),
        actions: [
          IconButton(onPressed: ()=>_startAddNewTransaction(context), icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: ()=>_startAddNewTransaction(context),),
    );
  }
}