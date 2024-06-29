import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/clicker_model.dart';

class ClickAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  ClickAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    final clickerModel = Provider.of<ClickerModel>(context);

    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          SizedBox(height: 10),
          Text(
            'Clicks: ${clickerModel.clickCount}',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
