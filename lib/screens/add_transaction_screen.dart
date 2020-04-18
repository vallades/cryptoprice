import 'package:cryptoprice/screens/home_screen.dart';
import 'package:cryptoprice/utils/nav.dart';
import 'package:flutter/material.dart';

class AddTransactionScreen extends StatefulWidget {
  @override
  _AddTransactionScreenState createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  final _formKey = GlobalKey<FormState>();

  var _exchangeController = TextEditingController();
  var _parController = TextEditingController();
  var _dataHoraController = TextEditingController();
  var _precoController = TextEditingController();
  var _montanteController = TextEditingController();
  var _taxaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Transação'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Form(
      key: _formKey,
        child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _text("Exchange", "Informe a Exchange", controller: _exchangeController),
            _text("Par", "Informe o Par de Trading (BTC/USD)", controller: _parController),
            _text("Data e Hora", "Informe a Data e Hora", controller: _dataHoraController),
            _text("Preço Compra", "Informe o Preço de Compra", controller: _precoController),
            _text("Montante Comprado", "Informe o Montante Comprado", controller: _montanteController),          
            _text("Taxa", "Informe a Taxa", controller: _taxaController),
            SizedBox(
              height: 20,
            ),
            _button("Adicionar", _onClickAdicionar)
          ],
        ),
      ),
    );  
  }  

  TextFormField _text(
    String label, 
    String hint, 
    {TextEditingController controller}
    ) {
    return TextFormField(
      controller: controller,
      validator: (String text) {
        if(text.isEmpty) {
          return "Campo obrigatório!";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
    );
  }

  Container _button(String text, Function onPressed) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.green[700],
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }

  void _onClickAdicionar() {

    if (! _formKey.currentState.validate()) {
      return;
    }

    String exchange = _exchangeController.text;
    String dataHora = _dataHoraController.text;

    push(context, HomeScreen());

    print(exchange + " " + dataHora);
  }
}