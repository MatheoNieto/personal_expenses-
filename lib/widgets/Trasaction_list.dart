import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Transaction.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget{
  List<Transaction> userTransactions;
  TransactionList(this.userTransactions, {super.key});

  @override
  Widget build(BuildContext context){
    return  Container(
        height: 300,
        child: ListView.builder(
          itemCount: userTransactions.length,
          itemBuilder: (ctx, index){
            return TransactionInfo(userTransactions[index].amount, userTransactions[index].date, userTransactions[index].title);
          },
        ),
      );
  }
}