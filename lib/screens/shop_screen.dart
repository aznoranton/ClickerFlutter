import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/clicker_model.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/click_app_bar.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clickerModel = Provider.of<ClickerModel>(context);

    return Scaffold(
        appBar: ClickAppBar(title: 'Магазин'),
        drawer: AppNavigationDrawer(),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('Добро пожаловать в магазин!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simple upgrade: cost 100 clicks for +1 click per click
                if (clickerModel.clickCount >= 100) {
                  clickerModel.purchaseUpgrade(10, 1);
                } else {
                  // Notify user that clicks are insufficient
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Недостаточно кликов')));
                }
              },
              child: Text('Купить +1 силу клика за 10 кликов'),
            ),
            SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Simple upgrade: cost 100 clicks for +1 click per click
                      if (clickerModel.clickCount >= 90) {
                        clickerModel.purchaseUpgrade(90, 10);
                      } else {
                        // Notify user that clicks are insufficient
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Недостаточно кликов')));
                      }
                    },
                    child: Text('Купить +10 силу клика за 90 кликов'),
                  ),
                  SizedBox(height: 20),
            ElevatedButton(
            onPressed: () {
        // Upgrade: cost 500 clicks for +5 clicks per click
        if (clickerModel.clickCount >= 500) {
          clickerModel.purchaseUpgrade(500, 5);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Недостаточно кликов')));
        }
            },
              child: Text('Купить +5 силы кликов за 400 кликов '),
            ),
                ],
            ),
        ),
    );
  }
}
