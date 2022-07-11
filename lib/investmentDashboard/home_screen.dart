import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  child: Image(
                    image: AssetImage("assets/images/Speaker.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    "Refer Rang De to your \n friends and family!"
                        .h3()
                        .bold()
                        .color(Theme.of(context).highlightColor)
                        .right(),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        "Amplify your impact"
                            .body()
                            .color(Theme.of(context).backgroundColor),
                        Icon(
                          Icons.navigate_next_outlined,
                          color: Theme.of(context).backgroundColor,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
