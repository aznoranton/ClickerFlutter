import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/clicker_model.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/click_app_bar.dart';

class AchievementsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final clickerModel = Provider.of<ClickerModel>(context);

    return Scaffold(
      appBar: ClickAppBar(title: 'Достижения'),
      drawer: AppNavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Достижения'),
            SizedBox(height: 20),

            ListTile(
              leading: Icon(Icons.star, color: clickerModel.clickCount >= 100 ? Colors.yellow : null),
              title: Text('Первые 100 кликов'),
              subtitle: Text('Награждение за первые 100 кликов'),
            ),
            ListTile(

              leading: Icon(Icons.star,color: clickerModel.clickCount >= 1000 ? Colors.yellow : null),
              title: Text('Первые 1000 кликов'),
              subtitle: Text('Награждение за первые 1000 кликов'),
            ),
            ListTile(

              leading: Icon(Icons.star,color: clickerModel.clickCount >= 10000 ? Colors.yellow : null),
              title: Text('Первые 10000 кликов'),
              subtitle: Text('Награждение за первые 10000 кликов'),
            ),
            ListTile(

              leading: Icon(Icons.star,color: clickerModel.clickValue >= 5 ? Colors.yellow : null),
              title: Text('Сила клика 5'),
              subtitle: Text('Набрать не менее 5 силу клика'),
            ),
          ],
        ),
      ),
    );
  }
}
