// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.



import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:custom_tile/main.dart';

void main() {
  testWidgets('Refer banner test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify the text is render
    expect(find.text('Refer Rang De to your \n friends and family!'), findsOneWidget);
    expect(find.text('Amplify your impact'), findsOneWidget);

    // verify the next icon
    expect(find.byIcon(Icons.navigate_next_outlined), findsOneWidget);
  });
}
