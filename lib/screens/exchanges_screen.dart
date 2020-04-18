import 'package:cryptoprice/data/exchanges_data.dart';
import 'package:flutter/material.dart';

import 'drawer_list.dart';

class ExchangesScreen extends StatefulWidget {
  @override
  _ExchangesScreenState createState() => _ExchangesScreenState();
}

class _ExchangesScreenState extends State<ExchangesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto Price"),
      ),
      body: _body(context),
      drawer: DrawerList(),
    );
  }

  _body(BuildContext context) {
    return Container(
      child: RaisedButton (
            color: Colors.green[700],
            child: Text(
              "Listar Exchanges",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            onPressed: () {
              Exchanges.GetExchangeTickers();
            },
          ),
      
    );
  }
}