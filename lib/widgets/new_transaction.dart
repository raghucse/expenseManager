import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleTextController = TextEditingController();
  final amountTextController = TextEditingController();
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleTextController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountTextController,
              ),
              FlatButton(
                  child: Text('Add Transaction '),
                  textColor: Colors.purple,
                  onPressed: () => {
                        addNewTransaction(
                            title: titleTextController.text,
                            amount: amountTextController.text)
                      }),
            ],
          ),
        ));
  }
}
