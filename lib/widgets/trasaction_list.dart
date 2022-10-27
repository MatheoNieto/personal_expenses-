import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget{
  @override
  _TransactionListState createState ()=> _TransactionListState();
}

class _TransactionListState extends State<TransactionList>{
  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', title: 'new shoes', amount: 69.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'weekly groceries', amount: 16.53, date: DateTime.now()),
  ];


  @override
  Widget build(BuildContext context){
    return Column(
      children: _userTransactions.map((transaction){
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2
                  )
                ),
                padding: EdgeInsets.all(10),
                child: Text('\$${transaction.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple
                  ),
                ),
              ),

            ],
          )
        )
      }).toList()
    )
  }
}