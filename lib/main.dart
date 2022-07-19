import 'package:apptheme/apptheme.dart';
import 'package:custom_tile/investmentDashboard/home_screen.dart';
import 'package:custom_tile/settings/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

void main() {
  runApp(const Settings());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Builder(builder: (context) {
        return const Scaffold(
          body: HomeScreen(),
        );
      }),
    );
  }
}
