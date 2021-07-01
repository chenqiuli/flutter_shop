import 'package:flutter/material.dart';

// ChangeNotifier 不管在哪个页面都能取到这个provide的值
// notifyListeners() 监听事件刷新
class Counter with ChangeNotifier {
  int value = 0;

  increment() {
    value++;
    notifyListeners();
  }
}
