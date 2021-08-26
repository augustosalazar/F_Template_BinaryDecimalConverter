// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:demo_app/ui/screens/my_app.dart';
import 'package:demo_app/ui/widgets/binary_decimal.dart';
import 'package:demo_app/ui/widgets/decimal_binary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Binary to Decimal', (WidgetTester tester) async {
    await tester
        .pumpWidget(MaterialApp(home: Scaffold(body: BinaryToDecimal())));

    expect(find.text('0'), findsNWidgets(2));
    expect(find.byKey(Key('1')), findsOneWidget);
    expect(find.byKey(Key('0')), findsOneWidget);

    await tester.tap(find.byKey(Key('1')));
    await tester.pump();
    await tester.tap(find.byKey(Key('1')));
    await tester.pump();

    expect(find.text('11'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);

    await tester.tap(find.byKey(Key('reset')));
    await tester.pump();
    expect(find.text('0'), findsNWidgets(2));
  });

  testWidgets('Decimal to Binary', (WidgetTester tester) async {
    await tester
        .pumpWidget(MaterialApp(home: Scaffold(body: DecimalToBinary())));

    expect(find.text('0'), findsNWidgets(2));
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);

    await tester.tap(find.byKey(Key("1")));
    await tester.pump();
    await tester.tap(find.byKey(Key("2")));
    await tester.pump();

    expect(find.text('12'), findsOneWidget);
    expect(find.text('1100'), findsOneWidget);

    await tester.tap(find.byKey(Key('reset')));
    await tester.pump();
    expect(find.text('0'), findsNWidgets(2));
  });

  testWidgets('Switch widgets', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('0'), findsNWidgets(2));
    expect(find.byKey(Key("1")), findsOneWidget);
    expect(find.byKey(Key("0")), findsOneWidget);
    expect(find.byKey(Key("2")), findsNothing);

    await tester.tap(find.byKey(Key("switch")));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
  });
}
