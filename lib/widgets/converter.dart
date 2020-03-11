import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
               alignment: Alignment.centerRight,
              child: Text("Binary to Decimal")
              ),
            Container(
              alignment: Alignment.centerRight,
              child: Text("11")
              ),
            Text("3"),
            Row(
                children: <Widget>[
                  MaterialButton(
                    child: Text("1"),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    child: Text("0"),
                    onPressed: () {},
                  ),
                ]),


            MaterialButton(
              child: Text("Reset"),
              onPressed: () {},
            ),
          ]),


    );
  }
}
