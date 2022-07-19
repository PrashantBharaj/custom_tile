import 'package:apptheme/apptheme.dart';
import 'package:custom_tile/settings/setting_screen.dart';
import 'package:custom_tile/settings/settings_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

void main() {
  testWidgets('testing My Rang De Account', (widgetTester) async {
    await widgetTester.pumpWidget(const Settings());
    await widgetTester.pumpAndSettle();
    var text =
        widgetTester.firstWidget(find.text('My Rang De Account')) as Text;
    expect(text.style?.fontSize, 14);
    expect(text.style?.color, const Color.fromRGBO(54, 158, 254, 1));
  });
  testWidgets('testing chat with us', (widgetTester) async {
    await widgetTester.pumpWidget(const Settings());
    await widgetTester.pumpAndSettle();
    var text = widgetTester.firstWidget(find.text('Chat with us')) as Text;
    expect(text.style?.fontSize, 14);
    expect(text.style?.color, const Color.fromRGBO(255, 255, 255, 1));
  });
  testWidgets('testing Support-email us', (widgetTester) async {
    await widgetTester.pumpWidget(const Settings());
    await widgetTester.pumpAndSettle();
    var text = widgetTester.firstWidget(find.text('Support-email us')) as Text;
    expect(text.style?.fontSize, 14);
    expect(text.style?.color, const Color.fromRGBO(255, 255, 255, 1));
  });
  testWidgets('testing LOGOUT', (widgetTester) async {
    await widgetTester.pumpWidget(const Settings());
    await widgetTester.pumpAndSettle();
    expect(find.text('LOGOUT'), findsOneWidget);
  });
  testWidgets('Settings elements count test', (WidgetTester tester) async {
    var titleCount = SettingsUIModel.rowsTitle.length;
    var iconCount = SettingsUIModel.icons.length;
    expect(titleCount, 3);
    expect(iconCount, 3);
    expect((titleCount == iconCount), true);
  });
}
