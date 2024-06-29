import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/clicker_model.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/click_app_bar.dart';
import 'settings_screen_big.dart';

class SettingsScreenShort extends StatelessWidget {
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
            Text('Кликер-игра с магазином, где вы можете улучшить свои клики и изменять монеты на 1000 и 10000 кликов.'),
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
                  MaterialPageRoute(builder: (context) => SettingsScreenBig()),
                );
              },
              child: Text('Перейти к более подробным настройкам'),
            ),
          ],
        ),

      ),
    );
  }
}