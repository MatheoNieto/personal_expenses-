import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Transaction.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget{
  List<Transaction> userTransactions;
  TransactionList(this.userTransactions, {super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: userTransactions.map((transaction){
        return TransactionInfo(transaction.amount, transaction.date, transaction.title);
      }).toList()
    );
  }
}