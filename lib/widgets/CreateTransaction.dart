import 'package:flutter/material.dart';
import '../models/transaction.dart';

class CreateTransaction extends StatelessWidget {
  Function onCreatedTransaction;

  CreateTransaction(this.onCreatedTransaction,{super.key});

  final titleController = TextEditingController();
  final amounController = TextEditingController();

  void _addTransaction(){

    final titleTransaction = titleController.text;
    final valueTransaction = double.parse(amounController.text);

    if(titleTransaction.isEmpty || valueTransaction < 1){
      return;
    }

    final newTransaction = Transaction(id: DateTime.now().toString(), title: titleTransaction, amount: valueTransaction, date: DateTime.now());
    onCreatedTransaction(newTransaction);
  }


  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Tittle'), controller: titleController, keyboardType: TextInputType.text, onSubmitted: (_)=>_addTransaction()),
            TextField(decoration: InputDecoration(labelText: 'Amount'), controller: amounController, keyboardType: TextInputType.number, onSubmitted: (_)=>_addTransaction(), ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all( Colors.red),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)
                ))
              ),
              child: Text('Add trasaction', style: TextStyle(color: Colors.white),), onPressed: ()=> _addTransaction,)
          ],
        ),
      ),
    );

  }
}