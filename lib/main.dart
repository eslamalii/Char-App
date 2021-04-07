import 'dart:math';

import 'package:chart_app/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(id: '1', title: 'Test', amount: 99.99, date: DateTime.now()),
    Transaction(id: '2', title: 'Test21', amount: 992.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Column(
          children: transaction.map((tx) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(
                      tx.amount.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 13),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        tx.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        tx.date.toString(),
                        style: TextStyle(color: Colors.black26),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            );
          }).toList(),
        ));
  }
}
