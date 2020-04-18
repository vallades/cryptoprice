import 'package:flutter/material.dart';

import 'drawer_list.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Price'),
      ),
      body: _body(context),
      drawer: DrawerList(),
    );
  }

  _body(BuildContext context) {

  }
}