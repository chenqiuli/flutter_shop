import 'package:flutter/material.dart';
import '../model/CategoryModel.dart';

// ChangeNotifier 不管在哪个页面都能取到这个provide的值
// notifyListeners() 监听事件刷新
class RightCategoryNavProvide with ChangeNotifier {
  List<BxMallSubDto> rightCategoryList = [];

  changeRightCategoryList(List<BxMallSubDto> list) {
    rightCategoryList = list;
    notifyListeners();
  }
}
