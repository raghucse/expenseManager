import 'package:expense_manager/models/transaction.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> transactions = [];

  _addNewTransaction({String title, String amount}) {
    final newTransaction = Transaction(
        id: (transactions.length + 1).toString(),
        title: title,
        amount: double.parse(amount),
        date: DateTime.now());

    setState(() {
      transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(transactions)
      ],
    );
  }
}
