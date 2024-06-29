import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/shop_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/achievements_screen.dart';
import 'models/clicker_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ClickerModel(),
      child: MaterialApp(
        title: 'Clicker Game',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/shop': (context) => ShopScreen(),
          '/settings': (context) => SettingsScreen(),
          '/profile': (context) => ProfileScreen(),
          '/achievements': (context) => AchievementsScreen(),
        },
      ),
    );
  }
}
