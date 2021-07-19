import './transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(
        id: '1', title: "new Shoe", amount: 69.99, date: DateTime.now()),
    Transaction(id: '2', title: "new pen", amount: 22.99, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Flutter App')),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  child: Container(
                    child: Text('CHART'),
                    width: double.infinity,
                    color: Colors.blue,
                  ),
                  elevation: 5,
                ),
                Column(
                  children: <Widget>[
                    ...transactions
                        .map((e) => Card(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 50),
                                    child: Text(
                                      e.amount.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.purple),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.purple, width: 2)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e.title,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        e.date.toString(),
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                        .toList()
                  ],
                ),
              ],
            )));
  }
}
