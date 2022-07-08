import 'package:apptheme/apptheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(image: AssetImage("assets/images/Speaker.png"),),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        "Refer Rang De to your".h3().bold().color(Colors.amber),
                        "friends and family!".h3().bold().color(Colors.amber),
                        const SizedBox(height: 8.0,),
                        Row(
                          children: [
                            "Amplify your impact".body().color(Colors.white),
                            const Icon(Icons.navigate_next_outlined, color: Colors.white,),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

