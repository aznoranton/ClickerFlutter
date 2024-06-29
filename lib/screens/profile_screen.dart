import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/clicker_model.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/click_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clickerModel = Provider.of<ClickerModel>(context);
    return Scaffold(
        appBar: ClickAppBar(title: 'Профиль'),
        drawer: AppNavigationDrawer(),
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text('Ваш профиль'),
    SizedBox(height: 20),
    CircleAvatar(
    radius: 50,
      backgroundImage: NetworkImage('https://avatars.mds.yandex.net/i?id=b2fe7025399d45c6af3f0aa022292227cfc609fc-12504436-images-thumbs&n=13'),
    ),
          SizedBox(height: 20),
          Text('Вы'),
          SizedBox(height: 20),
          Text('Всего кликов: ${clickerModel.clickCount}'),
        ],
        ),
        ),
    );
  }
}