import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/clicker_model.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/click_app_bar.dart';

class SettingsScreenBig extends StatelessWidget {
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
            Text('Данная кликер-игра позволяет игрокам зарабатывать монеты через клики и использовать их в магазине для улучшения своих способностей.\n Каждый клик приносит монеты, которые можно потратить на различные улучшения, увеличивающие количество монет за клик.\n Когда игрок достигает 1000 и 10000 кликов, монеты меняются на более ценные награды.\n Это позволяет продолжать улучшать и развивать стратегию для достижения ещё больших значений.'),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                clickerModel.resetClicks();
              },
              child: Text('Перезапустить игру'),
            ),

          ],
        ),

      ),
    );
  }
}