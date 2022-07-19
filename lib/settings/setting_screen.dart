

import 'package:apptheme/apptheme.dart';
import 'package:custom_tile/settings/settings_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: "Settings".h3(),
              centerTitle: true,
              backgroundColor: Theme.of(context).backgroundColor,
              elevation: 0,
            ),
            body: Center(
              child: Container(
                padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: SettingsUIModel.rowsTitle.length,
                        itemBuilder: (context, index){
                          Color foregroundColor = Theme.of(context).canvasColor;
                          Color backgroundColor = Theme.of(context).backgroundColor;
                          Color iconColor = Theme.of(context).canvasColor;
                          if (index == 1) {
                            backgroundColor = Theme.of(context).successColor;
                            foregroundColor = Theme.of(context).backgroundColor;
                            iconColor = Theme.of(context).backgroundColor;
                          } else if (index == 2) {
                            backgroundColor = Theme.of(context).primaryColor;
                            foregroundColor = Theme.of(context).backgroundColor;
                            iconColor = Theme.of(context).backgroundColor;
                          } else if (index == 3) {
                            backgroundColor = Theme.of(context).errorColor;
                            foregroundColor = Theme.of(context).backgroundColor;
                            iconColor = Theme.of(context).backgroundColor;
                          }

                          String buttonTitle = SettingsUIModel.rowsTitle[index];
                          String iconPath = SettingsUIModel.icons[index];
                          return TextButton(
                            onPressed: (){},
                            style: TextButton.styleFrom(
                              splashFactory: NoSplash.splashFactory,
                            ),
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                // border: Border.all( color: Theme.of(context).primaryColor),
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 5,
                                    offset:
                                    const Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: buttonTitle
                                        .body()
                                        .bold()
                                        .color(foregroundColor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Image.asset(
                                      iconPath,
                                      color: iconColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                          child: RDRoundedButton(title: "LOGOUT", onPressed: (){})),
                    ),
                  ],
                ),
              ),
            )
          );
        }
      ),
    );
  }
}
