import 'package:flutter/material.dart';

class ClickerModel extends ChangeNotifier {
  int _clickCount = 0;
  int _clickValue = 1000;
  String _imageUrl = 'https://uxwing.com/wp-content/themes/uxwing/download/banking-finance/bronze-coin-dollar-icon.png';

  int get clickCount => _clickCount;
  int get clickValue => _clickValue;
  String get imageUrl => _imageUrl;

  void incrementClicks() {
    _clickCount += _clickValue;
    _updateImage();
    notifyListeners();
  }

  void purchaseUpgrade(int cost, int value) {
    if (_clickCount >= cost) {
      _clickCount -= cost;
      _clickValue += value;
      notifyListeners();
    }
  }

  void resetClicks() {
    _clickCount = 0;
    _clickValue = 1;
    _imageUrl = 'https://uxwing.com/wp-content/themes/uxwing/download/banking-finance/bronze-coin-dollar-icon.png';
    notifyListeners();
  }

  void _updateImage() {
    if (_clickCount >= 100000) {
      _imageUrl = 'https://img.freepik.com/premium-vector/burning-golden-dollar-coin-coin-fire_3482-7652.jpg';
    } else if (_clickCount >= 10000) {
      _imageUrl = 'https://purepng.com/public/uploads/large/purepng.com-gold-coinsflatcoinsroundmetalgoldclipart-14215264795824vsee.png';
    } else if (_clickCount >= 1000) {
      _imageUrl = 'https://uxwing.com/wp-content/themes/uxwing/download/banking-finance/silver-coin-dollar-icon.png';
    } else {
      _imageUrl = 'https://uxwing.com/wp-content/themes/uxwing/download/banking-finance/bronze-coin-dollar-icon.png';
    }
  }
}