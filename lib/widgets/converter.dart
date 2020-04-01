import 'package:flutter/material.dart';

import 'binary_decimal.dart';
import 'decimal_binary.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  bool binaryDecimal = true;
  String _binary = "";
  String _decimal =
      "0"; // _decimal = int.parse(_binary, radix: 2).toRadixString(10);

  void _onPressed() {
    setState(() {
        binaryDecimal = !binaryDecimal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
            
              alignment: Alignment.centerLeft,
              child: FlatButton(
                  onPressed: () {
                    _onPressed();
                  },
                  child: Text(binaryDecimal? "Bynary -> Decimal":"Decimal -> Binary" ,
                      style: TextStyle(fontSize: 13, color: Theme.of(context).accentColor)))),
                 Expanded(child:binaryDecimal? BinaryDecimal() : DecimalBinary())     
          ]));
    
  }
}
