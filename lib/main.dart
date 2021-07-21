import 'package:expense_manager/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Flutter App')),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Card(
                      child: Container(
                        child: Text('CHART'),
                        width: double.infinity,
                        height: 30,
                        color: Colors.blue,
                      ),
                      elevation: 5,
                    ),
                  ),
                  UserTransaction()
                ],
              ),
            )));
  }
}
