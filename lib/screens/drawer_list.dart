import 'package:cryptoprice/screens/about_screen.dart';
import 'package:cryptoprice/screens/add_transaction_screen.dart';
import 'package:cryptoprice/screens/exchanges_screen.dart';
import 'package:cryptoprice/utils/nav.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Felipe Vallades"),
              accountEmail: Text("vallades@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://banner2.cleanpng.com/20180430/jge/kisspng-computer-icons-font-awesome-hamburger-button-5ae723a4ebfc72.3953800615250973809666.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Adicionar Transação"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                push(context, AddTransactionScreen(), replace: true);
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Listar Exchanges"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                push(context, ExchangesScreen(), replace: true);
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Sobre"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                push(context, AboutScreen(), replace: true);
              },
            )
          ],
        ),
      ),
    );
  }
}