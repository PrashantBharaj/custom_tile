// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.



import 'dart:io';

import 'package:apptheme/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:custom_tile/main.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

void main() {
  testWidgets('Refer banner test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verify the text is render
    // expect(find.text('Refer Rang De to your \n friends and family!'), findsOneWidget);
    // expect(find.text('Amplify your impact'), findsOneWidget);

    // final referRangDe = find.descendant(of: find.byType(Text), matching: find.text('Amplify your impact'));
    // final amplifyText = tester.widget<Text>(referRangDe);
    "hello".body();

    // expect(find.widgetWithText(Row, 'Amplify your impact'), findsOneWidget);
    var text = tester.firstWidget(find.text('Amplify your impact')) as Text;
    expect(text.style?.color, AppTheme.lightTheme.backgroundColor);
    expect(text.style?.fontSize, 14); // issue if the text widget packet changes these test will fail


    // print(text.runtimeType);
    // expect(amplifyText.color, Colors.white);
    // expect(amplifyText.style, const TextStyle(
    //   fontSize: 14,
    //   fontFamily: "Inter",
    //   fontWeight: FontWeight.w400,
    //   color: CustomColors.primaryDark,
    // ));
    // verify the next icon
    // expect(find.byIcon(Icons.navigate_next_outlined), findsOneWidget);
  });
}
