import 'package:flutter/material.dart';

class BinaryDecimal extends StatefulWidget {
  @override
  _BinaryDecimalState createState() => _BinaryDecimalState();
}

class _BinaryDecimalState extends State<BinaryDecimal> {
 String _binary = "";
  String _decimal =
      "0"; // _decimal = int.parse(_binary, radix: 2).toRadixString(10);

  void _onPressed(int k) {
    setState(() {
      switch (k) {
        case 0:
          _binary = _binary + "0";
          _decimal = int.parse(_binary, radix: 2).toRadixString(10);
          break;
        case 1:
          _binary = _binary + "1";
          _decimal = int.parse(_binary, radix: 2).toRadixString(10);
          break;
        case 2:
          _binary = "";
          _decimal = "0";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Theme.of(context).accentColor,
                      fontSize: 35),
                )),
            Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(8.0),
                child: Text('$_decimal',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                        fontSize: 35))),
            Expanded(
              flex: 3,
              child: SizedBox(
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                  _numberButton(1),
                  Spacer(),
                  _numberButton(0),
                ]),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      _onPressed(2);
                    },
                    child: Text("Reset",
                        style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ))),
              ),
            ),
          ]),
    );
  }

  Widget _numberButton(int number) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              _onPressed(number);
            },
            child: Text(number.toString(),
                style: new TextStyle(
                  fontSize: 26.0,
                  color: Colors.white,
                ))),
      ),
    );
  }

  
}