import 'package:cryptoprice/screens/add_transaction_screen.dart';
import 'package:cryptoprice/screens/exchanges_screen.dart';
import 'package:cryptoprice/utils/nav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Price'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[ 
          RaisedButton(
            color: Colors.green[700],
            child: Text(
              "Adicionar Transação",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            onPressed: () {
              push(context, AddTransactionScreen());
            },
          ),
          RaisedButton (
            color: Colors.green[700],
            child: Text(
              "Listar Exchanges",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            onPressed: () {
              push(context, ExchangesScreen());
            },
          ),
        ],
      ),
    );
  }
}