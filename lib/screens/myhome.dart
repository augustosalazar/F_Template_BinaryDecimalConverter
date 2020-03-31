import 'package:demo_app/widgets/converter.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Class demo Converter',
        theme: ThemeData(
           primaryColor: Colors.purple,
           accentColor: Colors.purpleAccent,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Class demo Converter'),
            ),
            body: Center(child: Converter())));
  }
}
