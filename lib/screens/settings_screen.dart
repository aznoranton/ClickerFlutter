import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/clicker_model.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/click_app_bar.dart';
import 'settings_screen_short.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clickerModel = Provider.of<ClickerModel>(context);

    return Scaffold(
      appBar: ClickAppBar(title: 'Настройки'),
      drawer: AppNavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Кликер игра'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                clickerModel.resetClicks();
              },
              child: Text('Перезапустить игру'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreenShort()),
                );
              },
              child: Text('Перейти к дополненным настройкам'),
            ),
          ],
        ),

      ),
    );
  }
}