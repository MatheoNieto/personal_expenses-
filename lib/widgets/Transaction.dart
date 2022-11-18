import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionInfo extends StatelessWidget {
  double amount;
  DateTime date;
  String title;

  TransactionInfo(this.amount, this.date, this.title, {super.key});


  @override
  Widget build (BuildContext context){
    return Card(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.purple,
                    width: 2
                )
            ),
            padding: const EdgeInsets.all(10),
            child: Text('\$${amount.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
              Text( DateFormat('yyyy-MM-DD').format(date), style: TextStyle(color: Colors.grey),),
            ],
          )

        ],
      ),
    );
  }

}