import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
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
                alignment: Alignment.centerLeft,
                child: Text("Binary -> Decimal")),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                      fontSize: 35),
                )),
            Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(8.0),
                child: Text('$_decimal',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:
                            Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                        fontSize: 35))),
            Row(children: <Widget>[
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "1",
                      style: new TextStyle(fontSize: 26.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _onPressed(1);
                    },
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 4,
                child: Padding(
                   padding: const EdgeInsets.all(8.0),
                                  child: MaterialButton(
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "0",
                      style: new TextStyle(fontSize: 26.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _onPressed(0);
                    },
                  ),
                ),
              ),
            ]),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
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
}
