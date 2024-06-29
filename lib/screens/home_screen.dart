import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/clicker_model.dart';
import '../widgets/navigation_drawer.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clickerModel = Provider.of<ClickerModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Кликер игра'),
      ),
      drawer: AppNavigationDrawer (),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Вы накликали столько раз:',
            ),
            Text(
              '${clickerModel.clickCount}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Твоя сила кликов:',
            ),
            Text(
              '${clickerModel.clickValue}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            IconButton(
              icon: Image.network(clickerModel.imageUrl, width: 150, height: 150),
              onPressed: () => clickerModel.incrementClicks(),
            ),
          ],
        ),
      ),
    );
  }
}
